import heapq
import random
from random import randint
from heapq_showtree import show_tree

# p = c/(n-1) where c = 5
V = 1000

def allNodes(numNodes):
	nums = ""
	for i in range(1,numNodes):
		nums+=str(i)
		nums+= ','
	nums = nums.split(',')
	nums.pop(numNodes-1)
	return nums

def generateProb(node):
	nodes = allNodes(V)
	toAdd = []
	nodes.remove(node)
	for i in nodes:
		if randint(1,100) < 5.0/(len(nodes))*100:
			toAdd.append(i)
	return toAdd

def graph():
	G = {}
	for i in allNodes(V):
		G[i] = generateProb(i)
	return G

graph()
G = graph()


def dijkstra(G,s):
	edges = 0
	atomic = 0
	G[s].insert(0,0) # set distance of source to 0
	G[s].insert(1,"NULL")
	for i in G:
		if G[i] != G[s]:
			G[i].insert(0,9999) # set distance to every node as infQy
			G[i].insert(1, "NULL") # set previous for each v as undefined
			atomic+=2

	Q = []
	heapq.heapify(Q)
	heapq.heappush(Q,(G[s][0], s))

	while len(Q) != 0:
		u = heapq.heappop(Q) # gives smallest value off of min heap
		atomic+=1
		for i in G[u[1]][2:]: # looks at all neighbors of u
			edges += 1
			alt = G[u[1]][0] + 1 # can't be 1 needs to be weighted
			if alt < G[i][0]:
				G[i][0] = alt # replacing distance of neighbor node with alt
				G[i][1] = u[1] # changing previous to current
				heapq.heappush(Q, (G[i][0], i))
				atomic+=3
	print "Final distance is: ", G[i][0], "atmoic number is: ", atomic, "number of edges is: ", edges
	


dijkstra(G, '1')