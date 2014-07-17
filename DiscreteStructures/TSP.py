# Alexander Scott Campbell XVI

import numpy as np
import time
import itertools
import math

data = np.loadtxt('TSP.csv', dtype=int)

global data_length
data_length = data.shape[0]



#find min val
def minval(x):

	currow = data[x,:]
	minval = np.min(currow[np.nonzero(currow)])
	return minval


#get current index
def getCurrentIndex(m, n):
	currentrow = data[m,:]
	currentdata = data[m,n]
	index = np.where(currentrow == currentdata)
	index = index[0]
	index = int(index)
	#print "Current index is:", index
	return index	

#get next index
def index(x):
	currow = data[x,:]
	index = np.where(currow == minval(x))
	index = index[0]
	index =int(index)
	return index

#reset our data
def reset():
	global data
	data = np.loadtxt('TSP.csv', dtype=int)


#nearest nieghbor algorithm
times = []
def nearestNeighbor(y):
	start = time.clock()
	totalSum = 0
	init = y
	print init

	for x in range(0,10):
		cost = minval(y)
		totalSum+=cost
		y = index(y)
		data[:,y] = 0
		print "The cost to go to city",y, "is", cost
		print "\n our total is: ", totalSum
	reset()

	#we still need to go home...
	totalSum+=data[init,y]
	cost = data[init,y]
	y = init
	print "The cost to go to city",y, "is", cost
	print "\n our total is: ", totalSum
	elapsed = (time.clock()-start)
	times.append(elapsed)
	print "elapsed time for nearest nieghbor algorithm: ",elapsed
	return totalSum

times2 = []
#nearest neighbor repeated algorithm
def NNrepeated():
	start = time.clock()
	nearestarray = []

	for x in range(0,10):
		nearestarray.append(nearestNeighbor(x))
		minimum = min(nearestarray)

	print minimum
	print data
	elapsed = (time.clock()-start)
	print "elapsed time for nearest nieghbor repeated algorithm: ",elapsed
	times2.append(elapsed)
	return minimum


			
			
#################
# This function applies the exhaustive  
# search algorithm on the data
def exhaustiveSearch():
	start = time.clock()
	GlobalSum = 0
	GlobalSumList = []
	VisitedCities = [0,1,2,3,4,5,6,7,8,9]
	for i in range(0,data_length):
		GlobalSumList.append(GlobalSum)
		cost = data[0,i] # cost of first row
		currentindex = getCurrentIndex(0,i)
		GlobalSum = 0
		VisitedCities = [0,1,2,3,4,5,6,7,8,9]
		GlobalSum = GlobalSum + cost
		VisitedCities.remove(currentindex)
		for j in range(0, data_length):
			currentindex = getCurrentIndex(0,j)
			if currentindex in VisitedCities:
				cost = data[i,j]
				GlobalSum = GlobalSum + cost
				VisitedCities.remove(currentindex)
			for k in range(0, data_length):
				currentindex = getCurrentIndex(0,k)
				if currentindex in VisitedCities:
					cost = data[j,k]
					GlobalSum = GlobalSum + cost
					VisitedCities.remove(currentindex)
				for m in range(0, data_length):
					currentindex = getCurrentIndex(0,m)
					if currentindex in VisitedCities:
						cost = data[k,m]
						GlobalSum = GlobalSum + cost
						VisitedCities.remove(currentindex)
					for n in range(0, data_length):
						currentindex = getCurrentIndex(0,n)
						if currentindex in VisitedCities:
							cost = data[m,n]
							GlobalSum = GlobalSum + cost
							VisitedCities.remove(currentindex)
						for o in range(0, data_length):
							currentindex = getCurrentIndex(0,o)
							if currentindex in VisitedCities:
								cost = data[m,o]
								GlobalSum = GlobalSum + cost
								VisitedCities.remove(currentindex)
							for p in range(0, data_length):
								currentindex = getCurrentIndex(0,p)
								if currentindex in VisitedCities:
									cost = data[m,p]
									GlobalSum = GlobalSum + cost
									VisitedCities.remove(currentindex)
								for q in range(0, data_length):
									currentindex = getCurrentIndex(0,m)
									if currentindex in VisitedCities:
										cost = data[k,m]
										GlobalSum = GlobalSum + cost
										VisitedCities.remove(currentindex)
							elapsed = (time.clock()-start)
			print elapsed
		print "global sum list is", GlobalSumList
		print "minium is", min(GlobalSumList)
		return GlobalSumList
					
def averages():
	for i in range(0,10):
		nearestNeighbor(i)
	print "average for nearest neighbor is: ", sum(times)

	for i in range(0,10):
		NNrepeated()
	print "average for NNrepeated is: ", sum(times2)
	
averages()


