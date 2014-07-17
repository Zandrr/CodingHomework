//The mug class Demo
//Program that tests how the mug class works

#include <iostream>  //provides cout and cin
#include <cstdlib> //provides the all important EXIT_SUCCESS
#include "mug.h"   //provides our mug class


using namespace std; //allows standard library items to be used

int main()
{
	mug firstMug; //Uses default constructor, should be empty. Note no empty
				  //empty parenthesis on the default constructor! this will error!
				  
	mug secondMug(15.0); //uses constructor with initial amount passed in.
	cout<<"\n I have two mugs. My first mug is filled to: ";
	cout<< firstMug.getFillAmount();
	cout<<". And my second mug is filled to: ";
	cout<< secondMug.getFillAmount();
	cout<<"\n";
	
	cout<<"Now let's empty our second mug \n";
	secondMug.empty();
	
	if(secondMug.isEmpty())
	{
		cout<<"the second mug is empty right now \n";	
	}
	
	cout<<"now let's fill up the second mug to 32.33 \n";
	secondMug.fillMug(32.33);
	
	
	
	cout<<"Now the second mug is filled to: ";
	cout<<secondMug.getFillAmount();
	cout<<"\n";
	
	cout<<"Now Let's try to pass in a negative fill amount"<<endl;
	secondMug.fillMug(-13.3);
	cout<<"\n";
	
	return EXIT_SUCCESS;
}
