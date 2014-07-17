import heapq
from heapq_showtree import show_tree

data = [19, 9, 4, 10, 11, 8, 2]

heap = []
print 'random :', data
print

for n in data:
    print 'add %3d:' % n
    heapq.heappush(heap, n)
    show_tree(heap)