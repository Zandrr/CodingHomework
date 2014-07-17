from Queue import Queue

N = {
	"a":["b","e"],
	"b":["a", "c"],
	"c":["b","d","e"],
	"d":["c"],
	"e":["a","c"]
}





def BFS(G,s):
	longest = 0
	for i in G:
		G[i].insert(0,'WHITE')
		G[i].insert(1, 0)
		G[i].insert(2, None)
	G[s][0] = 'GRAY'
	G[s][1] = 0
	G[s][2] = None
	queue = Queue()
	queue.put(s)
	while not queue.empty():
		visited = queue.get()
		for i in range(3,len(G[visited])):
			neighbor = G[visited][i]
			if G[neighbor][0] == 'WHITE':
				G[neighbor][0] = 'GRAY'
				G[neighbor][1] = G[visited][1] + 1
				G[neighbor][2] = visited
				queue.put(neighbor)
		G[visited][0] = 'BLACK'
		if longest < G[visited][1]:
			longest = G[visited][1]
	return longest






def LSP(graph):
	path =0
	for i in graph:
		if path < BFS(graph,i):
			path = BFS(graph,i)
		return path
			 


LSP(N)




