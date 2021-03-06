#ifndef _MAZE_H
#define MAZE_H_
#include <iostream>

typedef int value_type;
class Node;
class maze
{
	
public:
	
	maze();
	void init();
	bool solve(int index);
	bool win(int index);
	//void append(int index);
//cout and cin overload
friend std::ostream& operator <<(std::ostream& outs, const maze& source);
//friend std:: istream& operator <<(std::istream& outs, maze& target);	

private:
	int startingIndex;
	int xDim;
	int yDim;
	char* mazeArray;
	Node* head;
	//char* newMazeArray;

};

class Node
{
public:
	value_type data;
	Node* next;
friend std::ostream &operator << (std::ostream& outs, Node* node);
};

#endif

