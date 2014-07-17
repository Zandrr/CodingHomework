
#include <cstddef>
#include <iostream>
#ifndef BST_H
#define BST_H

template<class Item>
class bstNode
{
	public:
	//constructor
	bstNode(const Item& init_data, bstNode* init_left=NULL, bstNode* init_right= NULL)
		{
			data_field = init_data;
			left_field = init_left;
			right_field = init_right;
		}
	//helper functions if you need them ..
	//I think I haven't used any of them so far	
	//Item& get_data() {return data_field;}
	void set_data(Item& target) {data_field=target;}
	bstNode*& get_left() {return left_field;}
	bstNode*& get_right() {return right_field;}
	
	//FUNCTIONS YOU IMPLEMENT BELOW
	bool find(Item& targetData);
	void insert(Item& targetData);
	void remove(Item& targetData);
	int size();
	void traverse();
	int getMax();
	void deleteAddress();
	bstNode* fPointer(Item& targetData);
	
	
	//our private variables (we just have 3)
	private:
		Item data_field; //our data
		bstNode* left_field; //pointer to left child
		bstNode* right_field; //pointer to right child

};
//ALL OUR IMPLEMENTATIONS GO IN HERE-- NO .CPP FILE FOR BSTNODE BECUASE IT'S A TEMPLATE CLASS
template<class Item>
bool bstNode<Item>::find(Item& targetData)
{

  if(data_field == '\0'){return false;}
  if(data_field == targetData){return true;}
if(left_field!=NULL){
   if(left_field->find(targetData)){
     return true;
   }
     else{
       left_field->find(targetData);
     }
}
if(right_field!=NULL){
     if(right_field->find(targetData)){
       return true;
     }
         else{
	   right_field->find(targetData);
	 }
 }

return false;

}

template<class Item>
void bstNode<Item>::insert(Item& targetData)
{
	if(!this){
		data_field = targetData;
	}
	if(targetData >= data_field)
	{
		if ( right_field == NULL){
			right_field =new bstNode<Item>(targetData);
		}
		else{
			right_field->insert(targetData);
		}
	}
			
	if(targetData < data_field)
	{
		if ( left_field == NULL){
			left_field= new bstNode<Item>(targetData);
		}
		else{
			left_field->insert(targetData);
	}
	
}
}

template<class Item>
void bstNode<Item>::traverse()
{

	if(left_field !=NULL){
		left_field->traverse();
	}
	std::cout<<data_field<<std::endl;
	if(right_field !=NULL){
		right_field->traverse();
	}
}
template<class Item>
void bstNode<Item>::remove(Item& targetData)
{
	while(find(targetData)){

if(this->data_field == targetData){
	
	if(right_field == NULL && left_field == NULL ){
		delete this;
		std::cout<<"only a root node! "<<std::endl;
	
	}
	
	//this->data_field = targetData;

	
	if(left_field != NULL || right_field != NULL){
		this->data_field = getMax();
		deleteAddress();  
		std::cout<<"root is being replaced with "<<this->data_field<<std::endl;
	}

}
  
 else  if(targetData < data_field){
		if(left_field->data_field == targetData){
		left_field = left_field->left_field;
	}
			else if(left_field != NULL){
					left_field->remove(targetData);
	}
		else{
			left_field = NULL;
		}
}

  else if(targetData > data_field){
		if(right_field->data_field == targetData){
		right_field = right_field->right_field;
		}	
			else if(right_field != NULL) {
					right_field->remove(targetData);
			}
		else{
			right_field = NULL;
		}
		}

}
}

template <class Item>
int bstNode<Item>::getMax()
{
	bstNode* temp = this;
	

	if(temp->left_field != NULL){
		temp = temp->left_field;
			while(temp->right_field != NULL)
			{
				temp = temp->right_field;
			}
			return temp->data_field;
		}
			else if(temp->right_field !=NULL){
				temp = temp->right_field;
			while(temp->left_field != NULL){
				temp=temp->left_field;
			}
			return temp->data_field;
	}

	return 0;
	
}
		
template <class Item>
void bstNode<Item>::deleteAddress()
{
	bstNode* temp = this;
	
	if(temp->left_field != NULL){
		temp = temp->left_field;
			if(temp->right_field == NULL){
				std::cout<<" there is no right branch after initial left "<<std::endl;
				this->left_field = temp->left_field;
				temp = NULL;
				return;
			}
			while(temp->right_field->right_field != NULL){
				temp = temp->right_field;
			}
			std::cout<<"while loop ending " << temp->data_field<<std::endl;
			temp->right_field = NULL;
			return;
	}

			else if( temp->right_field !=NULL){
				temp= temp->right_field;
				if(temp->left_field == NULL){
					std::cout<<" there is no right branch after initial right "<<std::endl;
					this->right_field = temp->right_field;
					temp = NULL;
					return;
			}
				while(temp->left_field->left_field!=NULL){
					temp = temp->left_field;
				}
				temp->left_field = NULL;
			}
		
	

}
template<class Item>
int bstNode<Item>::size()
{
	int count = 1;
	
	if(left_field !=NULL){
		count+=left_field->size();
	}
	if(right_field !=NULL){
		count+=right_field->size();
	}

	return count;
}
#endif
