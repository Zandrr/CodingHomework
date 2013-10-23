#include<cassert>
#include "maze.h"
#include <fstream>
#include <iostream>
using namespace std;

maze::maze()
{
	
//cout<<"in constructor \n";

ifstream myIns;
myIns.open("Maze.txt");
assert (myIns.is_open());

//for each item in Ins put into maze arry
//int xDim; int yDim;
myIns>>yDim>>xDim;
//cout<<"Xdim: "<<xDim<<", Ydim: "<<yDim<<endl;
//char toInsertIntoSpace;
mazeArray= new char[yDim*xDim];
for (int i=0; i<yDim; i++)
{
for (int p=0; p<xDim; p++)
{
//myIns>>toInsertIntoSpace;
myIns>>mazeArray[i*xDim+p];
//newMazeArray=mazeArray;
}
}
}

//overloads
ostream &operator <<(ostream& outs, const maze& source)
{
	for (int i=0; i<source.yDim; i++)
	{
		for (int p=0; p<source.xDim; p++)
		{
		outs << source.mazeArray[i*source.xDim+p];
	}
		outs << endl;
}
	return outs;
}
//overload ostream for Node class
ostream &operator <<(ostream& outs, Node* node)
{
if(node==NULL){
	outs << "NULL node*" <<endl;
	}else{
		outs << node->next << " " <<endl;
	if(node->next == NULL){
		outs << "#" << endl;
	}
}
return outs;
}


//init
void maze::init(){
	for (int i=0; i<yDim; i++)
	{
		for (int p=0; p<xDim; p++)
		{
			if(mazeArray[i*xDim+p] == '*')
			{
				startingIndex = i*xDim+p;
				
			}
			
		}
	}
	solve(startingIndex);
}

bool maze::solve(int index)
{
	Node* new_node= new Node;
	mazeArray[index] = 'v';
	//cout<<"Checking Index: "<< index<<endl;
	

	if(win(index))
	 {
		// cout<<"win!"<<endl;
		mazeArray[index] = '*';
		//head = new_node;
		//new_node->data = index;
		//cout<<new_node->data<<endl;
		return true;
	 } 
	
	if((mazeArray[index + xDim] == '-') && (index + xDim <= (xDim*yDim)-1))
	{
		//cout<<"checking Down"<<endl;
		if(solve(index+xDim))
		{
		//head = new_node;
		//new_node->data = index;
		//cout<<new_node->data<<endl;
			mazeArray[index] = '*';
			
			return true;
		}
	}
	if(mazeArray[index-xDim] == '-' && (index-xDim >= 0))
	{
		//cout<<"checking Up"<<endl;
		if(solve(index-xDim))
		{
			mazeArray[index] = '*';
		head = new_node;
		new_node->data = index;
		cout<<new_node->next<<endl;
			return true;
		}	
	}
	
	if((((index+1)%xDim != 0)))
	{
		if(mazeArray[index+1] == '-')
		{   //cout<<"checking right"<<endl;
			if(solve(index+1))
			{
				mazeArray[index] = '*';
				return true;
				}
			}
	}
	
	if((index%xDim != 0) && mazeArray[index-1] == '-')
	{
		//cout<<"checking left"<<endl;
			if(solve(index-1))
			{
				mazeArray[index] = '*';
				return true;
		}
	}
	
		mazeArray[index] = '-';
		return false;
		
		
}

bool maze::win(int index){
		//check up
		if ((index-xDim>0) && (mazeArray[index-xDim]=='$'))
		{
			//cout<<"upwin!"<<endl;
			return true;
		}
		//Check down
		if (((index+xDim) < (yDim*xDim-1)) && ((mazeArray[index+xDim]) == '$'))
		{
			//cout<<"downWin!"<<endl;
			return true;
		} 
		//Check left
		if ((index%xDim!=0) && (mazeArray[index-1] =='$'))
		{
			//cout<<"leftWin!"<<endl;
			return true;
		} 
		//check right
		if (((index+1 % xDim)!= 0) && (mazeArray[index+1] =='$'))
		{
			//cout<<"rightwin!"<<endl;
			return true;
		}
		return false;
		
 }
 /*
 void maze::append(Node* new_node)
 {
	 Node* cursor = head;
	 if(head ==  NULL)
	 {
		 head = new_node;
	 }
		else{
			while(new_node!=NULL)
		{
			cursor = cursor->next;
		}
		cursor->next = new_node;
		new_node->next = NULL;
		}
	}

 */


		



