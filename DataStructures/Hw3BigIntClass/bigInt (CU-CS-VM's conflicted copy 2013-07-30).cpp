#include<cassert>//provides assert
#include "bigInt.h" //big int class
#include <iostream> //we are adding ostream and istream
#include <cstdlib>
#include <cmath>
#include <sstream>
#include <cstring>
#include <string>
#include <cstdio>
#include <typeinfo>
using namespace std;

//Default constructor
bigInt::bigInt()
{
	bigIntArray = new char[2];
		bigIntArray[0] = '0';
		bigIntArray[1] = '\0';
	//a 2 element array with an initial value of zero and a NULL
	//character  ie: 0th element is 0 and 1st element is NULL
}

//"c_str" constructor
bigInt::bigInt(const char initialValue [])
{
	bigIntArray = new char[strlen(initialValue+1)];
		strcpy(bigIntArray, initialValue);
	//make your bigInt array equal to this c_str
	//being passed in  (i.e. use strlen to allocate
	//memory (remember to add +1 to it though for the null character...
	// and strcpy to copy the stuff over (strcpy adds the null automatically)
}

//"integer" constructor
bigInt::bigInt(int initialValue)
{
	int ret;
	ret= initialValue;
	int count =0;
		if (ret<0){ count = 1;};
			while(ret>0){
				ret = ret/10;
				count++;
				cout<<count<<endl;
			}
			bigIntArray = new char[count+1];		
			sprintf(bigIntArray, "%i",initialValue);
			//cout<<"big int array is: " <<bigIntArray<<endl;

	//use a loop to count the numberOfDigits in initial value
	//Allocate that memory and copy it over (that good ol divide
	//by 10 and modulo 10 thing
	//return;
}

//"double" constructor
bigInt::bigInt (double initialValue)
{
	double ret;
	ret= initialValue;
	int count =0;
		while(ret>1){
			ret = ret/10;
			count++;

		}
		bigIntArray = new char[count+1];		
		sprintf(bigIntArray, "%i",int(initialValue));
	
	//very similar to the integer constructor strategy above
	//in fact you get this into an int and you can use the same
	//code...	
	return;
}

//Copy Constructor
bigInt::bigInt (const bigInt& toCopyFrom)
{

	bigIntArray  = toCopyFrom.getBigIntArray();
	//use the getBigIntArray on toCopyFrom to set bigIntArray of you object
	//remember to delete bigIntArray of your object BEFORE setting it
	//or else you'll get a memory leak 
}

bigInt::~bigInt()
{
	delete []bigIntArray;
	//delete your bigIntArray
	return;
}


//Returns a dynamically allocated copy tot he bigIntArray
char* bigInt::getBigIntArray() const
{
	//Implemented to help you.
//RETURNS A POINTER TO A COPY of our bigIntArray
//with memory already allocated. You can set this 
//to another char * etc.
	char *toReturn;
	toReturn=new char[strlen(bigIntArray)+1];
	strcpy(toReturn, bigIntArray);
	return toReturn;
}

//operator "="
void bigInt::operator = (const bigInt& toEqual)
{
	bigIntArray = toEqual.getBigIntArray();
	//use getBigIntArray on toEqual to set your int array to 
	//the intArray of toEqual	
	return;
}

//operator "=="
bool operator ==(const bigInt &firstInt, const bigInt &secondInt)	
{
	if( strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())==0 ){
		return true;
	}
	//check to see if the bigIntArray's are equal
	//you can use strcmp for this
 return false;
}

//operator !=
bool operator !=(const bigInt &firstInt, const bigInt &secondInt)
{
	if (strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray()) == 0){
		return false;
	}
	//easy once you've done ==
	return true;
}

//operator <
bool operator <(const bigInt &firstInt, const bigInt &secondInt)
{
	if(strcmp(firstInt.getBigIntArray(),secondInt.getBigIntArray())<0){
		//cout<< "first is: " << firstInt.getBigIntArray()<<"second is: " <<secondInt.getBigIntArray()<<endl;
		return true;
	}
	return false;
}

//operator >
bool operator >(const bigInt &firstInt, const bigInt &secondInt)
{
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())>0){
		return true;
		
	}
	return false;
	


}

//operator <=
bool operator <=(const bigInt &firstInt, const bigInt &secondInt)
{
	if(firstInt<secondInt || firstInt == secondInt){
		return true;
	}
	return false;

	
}

//operator >=
bool operator >=(const bigInt &firstInt, const bigInt &secondInt)
{
	if(firstInt>secondInt || firstInt == secondInt){
		return true;
	}
	return false;
}

bigInt operator +(const bigInt &firstInt, const bigInt &secondInt)
{
	
	char* final;
	int n1,n2,n3;



	
	char* temp1 = firstInt.getBigIntArray();
	int t1 = strlen(temp1);
	
	char* temp2 = secondInt.getBigIntArray();
	int t2 = strlen(temp2);
	int count = 0;
	
		if(t1>t2)
		{
			char* temp3 =  new char[strlen(temp1)];
			final = new char[strlen(temp1)];
			final = temp1;
			cout <<"before iterating final = "<<final<<endl;

			
			for(int i=0; i<t2; i++){
			cout<<"count is " <<count<<endl;
				char c1 = temp1[t1-(i+1)];
				char c2 = temp2[t2-(i+1)];
				 n1 = c1 - '0';
				 n2 = c2 - '0';
				 n3 = n1+n2;
				 cout<<"n3 = "<< n3 <<endl;
					if(n3>=10){
						cout<<"it's over 10"<<endl;
						n3 = n3-10;
						sprintf(temp3, "%i", n3);
						final[t1-(i+1)] = *temp3;
						count++;
					}
					else if(count==0){
						cout<< "carrying a 1"<<endl;
						n3=n3+1;
						sprintf(temp3, "%i", n3);
						final[t1-(i+1)] = *temp3;
						count = 0;
					}
					else{
						sprintf(temp3, "%i", n3);
						final[t1-(i+1)] = *temp3;
					}						
				cout <<"final "<<final<<endl;
	
	
				
			}
			cout<<"final after iterating = " <<final<<endl;

		}
			else
			{

			final = temp2;
			//cout<<final<<endl;
			}
			//cout<<final<<endl;

			
	
	//there are many strategies to this I'll outline the one that we
	//did in class here you can use it 
	//or feel free to devise your own way...
	
	//make two temporary char* to hold the bigIntArray of firstInt and secondInt
    //you can use getBigIntArray (temp1 and temp2)
    
    //find out which one of these bigInts is bigger and make a third char*
    //array of that size to hold the result of our add (result)
    
    //start at the final index of temp1 and temp2 and start adding them
    //index by index, placing them in result and decrementing their indexes (I 
    //had two index variables)
    //Remember to add a carry if the last sum was greater or equal to 10
    
    //When the smaller numbers index is negative, then you only add
    //the bigger ones index to the carry and place this in the result
    
    //when you're done (ie index1 and index2 are negative) - if you have a 
    //carry you resize the result array and put a 1 in the front
    
    //finally you create a bigInt with that array and return it
    //before you do remember to deallocate any dynamic memory before the
    //ptr disappears
    
    return 0;
}   



void bigInt::operator += (const bigInt& intToAdd)
{
	//now that you've done add,  you can use a temporary bigInt
	//and the "this" pointer to add your current object to 
	//intToAdd. then you can use getbigIntArray on the temp
	//to set "this" big int array, possibly cleaning up
	//memory along the way...
	return;
}

void operator - (const bigInt& intToSubtract)
{
	//Think about this....
	return;
}

void bigInt::operator -= (const bigInt& intToSubtract)
{
	//If you've done minus, this should be easy
	//you can even use the this ptr.
	return;
}

//ostream is implemented for you
ostream& operator <<(ostream& outs, const bigInt& source)
{  
	outs<<source.bigIntArray;
	return outs;
}

//istream is implemented for you in a cheating manner
std::istream& operator >>(std::istream& ins, bigInt& target)
{
	delete [] target.bigIntArray;
	string hello;
	ins>>hello;
	bigInt temp(hello.c_str());
	target.bigIntArray=temp.getBigIntArray();
    return ins;
}

