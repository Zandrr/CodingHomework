require 'tree'

class Huffman

	attr_accessor :string

def initialize(string)
	@string = string
	end

def gethash()
	queue = Hash.new(0)

	chars = string.split(//)

	chars.each {|w| queue[w]+=1}
	
	Hash[queue.sort_by{|_key, value| value}]


end


def huffmancode()
	priority = self.gethash()

	k = priority.count + 1

	m = (2*priority.count) - 1

	trees =[]
	count = 0

	until k > m do

		i = priority.keys[0]
		#puts "i is ", i

		j = priority.keys[1]
		#puts "j is ", j

		ij = priority.values[0].to_i + priority.values[1].to_i
		ival = priority.values[0].to_i
		jval =priority.values[1].to_i
		
		root_node = Tree::TreeNode.new("#{i.to_s + j.to_s}", ij)
		root_node << Tree::TreeNode.new("#{i.to_s}", ival)
		root_node << Tree::TreeNode.new("#{j.to_s}", jval)

		trees << root_node

		#print "tree ", count, "is  ", trees[count].print_tree
		


		priority.delete "#{i}"
		priority.delete "#{j}"

		# priority["#{:count}"] = 
		priority = Hash["#{i.to_s + j.to_s}", ij].merge!(priority)

		#puts priority
		count = count + 1
		k = k+1

	priority = Hash[priority.sort_by{|_key, value| value}]
	#puts "priority is ", priority
		
#puts trees[0].children
	end	
				# puts trees[1]
				# 		trees[1].remove!(trees[1].first_child)
				# 		puts "MERGING TREES"
				# 		trees[1] << trees[0]
				# puts trees[0]
				#print  trees[1].children


	puts trees
		for i in 0...trees.length
			for j in 1...trees.length
				#puts "tree j is ", trees[j+1], "tree i is ", trees[i]
				if !trees[i+1].nil?
					# puts "i is ", i
					# puts "j is ", j
					if trees[i].content == trees[j].first_child.content and i!=j
						#puts "REMOVING LEFT CHILD"
						trees[j].remove!(trees[j].first_child)
						#puts "MERGING TREES"
						trees[j] << trees[i]
						#print trees[0]


					elsif trees[i].content == trees[j].last_child.content and i!=j
						#puts "REMOVING RIGHT CHILD"
						trees[j].remove!(trees[j].last_child)
						#puts "MERGING TREES"
						trees[j] << trees[i]
						#print trees[0]
					end
				end
			end
		end
		tree =  trees[trees.length-1]

		tree.print_tree
	end #end for huffman






end #class end

w = Huffman.new("aabbbcbcbauds")
w.huffmancode()

