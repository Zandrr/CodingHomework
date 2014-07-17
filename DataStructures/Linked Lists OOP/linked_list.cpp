/*
  linked_list.cpp

  This is the OBJECT-ORIENTED version of the linked list
  assignment. If the filenames conflict with last week's assignment:
  why are you doing everything in one big messy folder?

 */

#include "linked_list.hpp"

using namespace std;

LinkedList::LinkedList() {
  head = NULL;
}

void LinkedList::append_data(int data) {
Node* new_node = new Node;
new_node->data = data;
new_node->next = NULL;
append(new_node);
}
  
void LinkedList::append(Node* new_node) {
  Node* cursor = head;
	if(head == NULL){
		head = new_node;
	}else{
		while(cursor->next !=NULL){
			cursor = cursor->next;
		
}
		cursor->next = new_node;
		new_node->next = NULL;
}
}
void LinkedList::insert_data(int offset, int data) {
  Node* new_node = new Node;
  new_node->data = data;
  new_node->next = NULL;
  insert(offset, new_node);
}

void LinkedList::insert(int offset, Node* new_node) {
 Node* cursor = head;
	if(head == NULL){
		head = new_node;
	}
	if(offset == 0){
		new_node->next = head;
		head = new_node;
	}
	else{
		for(int i=0; i<offset-1; i++){
			if(cursor== NULL){
				return;
			}
			cursor = cursor->next;
			}
			new_node->next = cursor->next;
			cursor->next = new_node;
}
}

void LinkedList::remove(int offset) {
Node* cursor = head;
Node* doomed = cursor;
	if(head == NULL){
		return;
	}else if(offset == 0){
		*cursor= *cursor->next;
}else{
	for(int i=0; i<offset; i++){
		doomed = cursor;
		cursor=cursor->next;
	}
}
doomed->next = cursor->next;
}

int LinkedList::size() {
  Node* cursor = head;
  int count = 0;
	if(head == NULL){
		cout << "there are 0 nodes" <<endl;
	}
	else{
		while(cursor != NULL){
			count = count + 1;
			cursor = cursor->next;
		}
		cout << "there are " << count << " nodes" <<endl;

}
return count;
}

bool LinkedList::contains(int val) {
 Node* cursor = head;
	if(head==NULL){
		return false;
	}
	else{
		while(cursor!= NULL){
			if(cursor->data == val){
				return true;
			}
			cursor=cursor->next;
}
}
return false;
}

Node* LinkedList::getHead() {
  // don't modify this
  return head;
}

void LinkedList::setHead(Node* node) {
  // don't modify this
  head = node;
}
  
ostream &operator << (ostream& out, LinkedList* state) {
  // debugging function. ok to modify if you want to
  if (state != NULL) {
    Node* cursor = state->getHead();
    out << "[";
    while (cursor != NULL) {
      out << cursor;
      cursor = cursor -> next;
    }
    out << "]";
  } else {
    out << "NULL LinkedList*";
  }
  return out;
}

ostream &operator << (ostream& out, Node* node) {
  // debugging function. ok to modify if you want to
  if (node == NULL) {
    out << "NULL Node*";
  } else {
    out << node->data << " ";
    if (node->next == NULL) {
      out << "#";
    }
  }
  return out;
}
