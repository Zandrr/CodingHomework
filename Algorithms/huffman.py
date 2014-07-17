from collections import Counter


class Node(object):
    def __init__(self, pairs, frequency):
        self.pairs = pairs
        self.frequency = frequency

    def __repr__(self):
        return repr(self.pairs) + ", " + repr(self.frequency)

    def merge(self, other):
        total_frequency = self.frequency + other.frequency
        for p in self.pairs:
            p[1] = "1" + p[1]
        for p in other.pairs:
            p[1] = "0" + p[1]
        new_pairs = self.pairs + other.pairs
        return Node(new_pairs, total_frequency)


def huffman(s):
    atomic = 0
    frequency_table = Counter(s)
    initial_table = []
    for k, v in frequency_table.items():
        initial_table.append([k, v])
    initial_table = sorted(initial_table, key=lambda p: p[1])
    #print(initial_table)
    table = []
    for entry in initial_table:
        ch = entry[0]
        freq = entry[1]
        table.append(Node([[ch, ""]], freq))
        atomic+=3
    #print(table)
    while len(table) > 1:
        first_node = table.pop(0)
        second_node = table.pop(0)
        new_node = first_node.merge(second_node)
        table.append(new_node)
        table = sorted(table, key=lambda n: n.frequency)
        atomic+=5
        #print(table)
    #return atomic 
    return dict(table[0].pairs)

#print(huffman('abbccc'))

def graph():


     for i in (10**x for x in range(1,5)):
        arr = []
        for j in range(0,i):
            arr.append(j)
        print huffman(arr)
        
#graph() #yields: 75
                #795
                #7995
                #79995

def test():
    w = "the road not taken by robert frost two roads diverged in a yellow wood, and sorry i could not travel both and be one traveler, long i stood and looked down one as far as i could to where it bent in the undergrowth; then took the other, as just as fair, and having perhaps the better claim, because it was grassy and wanted wear; though as for that the passing there had worn them really about the same, and both that morning equally lay in leaves no step had trodden black. oh, i kept the first for another day! yet knowing how way leads on to way, i doubted if i should ever come back. i shall be telling this with a sigh somewhere ages and ages hence: two roads diverged in a wood, and i- i took the one less traveled by, and that has made all the difference"
    x = huffman(w)
    z = ""
    for i in w:
        z = z + x[i]
    print z


test()





