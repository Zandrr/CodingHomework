import csv
#question 1
cr = csv.reader(open("WorldBank2012DataWORegions.csv","rU"))
next(cr)
ret =list(cr)
WOCountries=[]

for x in ret:
	L=x[1]
	WOCountries.append(L)
WOCountries = set(WOCountries)
#print WOCountries


	
cr2 = csv.reader(open("WorldBank2012Regions.csv","rU"))
next(cr2)
ret2 =list(cr2)
Countries=[]
for x in ret2:
	L=x[1]
	Countries.append(L)
Countries = set(Countries)
#print Countries

#question 2
dif=WOCountries-Countries
print dif ,"WOCountries is a superset of Countries"
#question 3
AND = WOCountries & Countries
print "The results of WOCountries && Countries:"
print AND


#question 4
cr3 = csv.reader(open("WorldBank2012Regions.csv","rU"))
next(cr3)
ret3 =list(cr3)
Regions=[]
for x in ret3:
	L=x[2]
	Regions.append(L)
Regions = set(Regions)
#print "Regions are: ",Regions

#question 5
print "****STARTING STEP 1 FOR PARTITION TEST****"
print "Each subset is NOT empty, REGIONS:"
print Regions
print "WOCountries union Countries: "
print AND
if (len(AND) > 0) & (len(Regions) > 0):
	print "TEST 1 SUCCESSFUL"
else:
	print "TEST 1 FAILED, not a valid partition"

print "****STARTING STEP 2 FOR PARTITION TEST****"
vp=Regions & AND
if len(vp) > 0:
	print "TEST 2 FAILED"
else:
	print "TEST 2 SUCCESSFUL"
print "****STARTING STEP 3 FOR PARTITION TEST****"
vp2=Regions | AND
if len(vp2)== (len(Regions)+len(AND)):
	print "TEST 3 SUCCESS, WE HAVE A VALID PARTITION"
else:
	print "TEST 3 FAILED"

#question 6
cr4 = csv.reader(open("WorldBank2012Regions.csv","rU"))
next(cr4)
ret4 =list(cr4)
SSAorASIA=[]
for x in ret4:
	if (x[2] == "Sub-Saharan Africa") | (x[2] == "South Asia"):
		L=x[1]
		SSAorASIA.append(L)
	else:
		False
SSAorASIA = set(SSAorASIA)
SSASA=SSAorASIA & AND
#print "SSASA is: ",SSASA

#question 7
cr5 = csv.reader(open("WorldBank2012DataWORegions.csv","rU"))
next(cr5)
ret5=list(cr5)
ArableLand=[]
for x in ret5:
	if ((x[3]=="AG.LND.ARBL.ZS") & (x[4] > 10)):
		L=x[1]
		ArableLand.append(L)
	else:
		False
ArableLand = set(ArableLand)
ArableLand=ArableLand & AND
#print "Airable Land is: ", ArableLand

#question 8
last=ArableLand&SSASA
print "SSASA & ArableLand is ", last





