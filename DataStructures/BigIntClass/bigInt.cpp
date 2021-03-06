#include<cassert>//provides assert
#include "bigInt.h" //big int class
#include <iostream> //we are adding ostream and istream
#include <cstdlib>
#include <cmath>
#include <sstream>
#include <cstring>
#include <string>
using namespace std;

//Default constructor
bigInt::bigInt()
{
	//a 2 element array with an initial value of zero and a NULL
	//character  ie: 0th element is 0 and 1st element is NULL
	bigIntArray = new char[2];
	bigIntArray[0] = '0';
	bigIntArray[1] = '\0';

}

//"c_str" constructor
bigInt::bigInt(const char initialValue [])
{
	//make your bigInt array equal to this c_str
	//being passed in  (i.e. use strlen to allocate
	//memory (remember to add +1 to it though for the null character...
	// and strcpy to copy the stuff over (strcpy adds the null automatically)
	bigIntArray = new char[strlen(initialValue)+1];
	strcpy(bigIntArray, initialValue);
	cout<<"bigIntArray: "<<bigIntArray << endl;
}

//"integer" constructor
bigInt::bigInt(int initialValue)
{
	//use a loop to count the numberOfDigits in initial value
	//Allocate that memory and copy it over (that good ol divide
	//by 10 and modulo 10 thing

	int number = initialValue;
	int digits = 0;
	if (number <0) digits = 1;

	while (number){
		number /= 10;
		digits++;
	}
	bigIntArray = new char[digits+1];
	sprintf(bigIntArray, "%i", initialValue); 
}

//"double" constructor
bigInt::bigInt (double initialValue)
{
	//very similar to the integer constructor strategy above
	//in fact you get this into an int and you can use the same
	//code...	

	int number = (int)initialValue;
	int digits = 0;
	if (number <0) digits = 1;

	while (number){
		number /= 10;
		digits++;
	}

	bigIntArray = new char[digits+1];
	sprintf(bigIntArray, "%i", (int)initialValue); 
}

//Copy Constructor
bigInt::bigInt (const bigInt& toCopyFrom)
{
	//use the getBigIntArray on toCopyFrom to set bigIntArray of you object
	//remember to delete bigIntArray of your object BEFORE setting it
	//or else you'll get a memory leak 

	bigIntArray = toCopyFrom.getBigIntArray();
}

bigInt::~bigInt()
{
	//delete your bigIntArray
	delete []bigIntArray;
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
}

// operator "=="
bool operator ==(const bigInt &firstInt, const bigInt &secondInt)	
{
	//check to see if the bigIntArray's are equal
	//you can use strcmp for this
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())==0)
	{
		cout<< "The last two numbers are equal!"<<endl;
		return true;
	}
	return false;
}

//operator !=
bool operator !=(const bigInt &firstInt, const bigInt &secondInt)
{
	//easy once you've done ==
	// return (firstInt.get_x() != secondInt.get_x() || firstInt.get_y() != secondInt.get_y());
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())!=0)
	{
		cout<< "The last two numbers are not equal!"<<endl;
		return true;
	}
	return false;
}

//operator <
bool operator <(const bigInt &firstInt, const bigInt &secondInt)
{
//strcmp is 1 if the first value is larger
//strcmp is -1 if the second value is larger
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())>0)
	{
		// cout<< "The first value is larger"<<endl;
		return false;
	}
	else if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())<0)
	{
		// cout<< "The first value is smaller"<<endl;
		return true;
	}
	else
	{
		// cout<< "The values are equal"<<endl;
		return false;
	}
	return false;
	//Not too bad, think about it...
}

//operator >
bool operator >(const bigInt &firstInt, const bigInt &secondInt)
{
	//strcmp is 1 if the first value is larger
//strcmp is -1 if the second value is larger
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())>0)
	{
		// cout<< "The first value is larger"<<endl;
		return true;
	}
	else if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())<0)
	{
		// cout<< "The first value is smaller"<<endl;
		return false;
	}
	else
	{
		cout<< "The values are equal"<<endl;
		return false;
	}
	return false;	
	//you've done equals and <, so this should be easy
	}

// operator <=
bool operator <=(const bigInt &firstInt, const bigInt &secondInt)
{
//strcmp is 1 if the first value is larger
//strcmp is -1 if the second value is larger
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())>0)
	{
		// cout<< "The first value is larger"<<endl;
		return false;
	}
	else if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())<0)
	{
		// cout<< "The first value is smaller"<<endl;
		return true;
	}
	else
	{
		cout<< "The values are equal"<<endl;
		return true;
	}
	return false;

	//if it's not greater than..
}

// operator >=
//strcmp is 1 if the first value is larger
//strcmp is -1 if the second value is larger
bool operator >=(const bigInt &firstInt, const bigInt &secondInt)
{
	if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())>0)
	{
		cout<< "The first value is larger"<<endl;
		return true;
	}
	else if(strcmp(firstInt.getBigIntArray(), secondInt.getBigIntArray())<0)
	{
		// cout<< "The first value is smaller"<<endl;
		return false;
	}
	else
	{
		cout<< "The values are equal"<<endl;
		return true;
	}
	return false;
	//if it's not less than...
}

bigInt operator +(const bigInt &firstInt, const bigInt &secondInt)
{
	


	char* temp1 = firstInt.getBigIntArray();
	char* temp2 = secondInt.getBigIntArray();
	char* finalsum;
	int lastvalue;


	if (strlen(temp1)>strlen(temp2))
	{
		lastvalue = strlen(temp1)+1;
		finalsum = new char [lastvalue];
		// strcpy(finalsum,temp1);

	}
	else
	{
		lastvalue = strlen(temp2)+1;
		finalsum = new char [lastvalue];
		// strcpy(finalsum,temp2);
	}
	finalsum[lastvalue]='\0';
	int lastvalue1, lastvalue2, carryFlag,sum;
	carryFlag = 0;

	lastvalue1 = strlen(temp1)-1;
	lastvalue2 = strlen(temp2)-1;
	//sum = strlen(finalsum)-1;

	while (lastvalue1 >= 0 || lastvalue2 >= 0)
	{
		if (lastvalue1 < 0 && lastvalue2 >= 0)
		{
			sum= temp2[lastvalue2]-'0'; 
			sum+= carryFlag;
			// cout<<"  First value has been totally added"<<endl;
		}

		else if (lastvalue1 >= 0 && lastvalue2 < 0)
		{
			sum= temp1[lastvalue1]-'0'; 
			sum+= carryFlag;		
			// cout<<"  Second value has been totally added"<<endl;
		}

		else
		{
			sum= temp2[lastvalue2]-'0' + temp1[lastvalue1]-'0'; 
			sum+= carryFlag;	
			// cout<<"  Added integers from both numbers"<<endl;
		}

		if (sum > 9)
		{
			carryFlag = 1;
			sum = sum - 10;
			// cout<<"Carry Flag is equal to: "<<carryFlag<<endl;
		}
		else 
		{
			carryFlag = 0;
		}
		lastvalue1--;
		lastvalue2--;


		// cout<<sum<<endl;
		finalsum [lastvalue-2] = sum+'0';
		lastvalue--;
	}   
	if (carryFlag == 1)
	{
		char* finalsum2 = new char [strlen(finalsum)+2];
		finalsum2[strlen(finalsum)+1]=NULL;
		finalsum2[0] = '1';
		for (int i=0; i < strlen(finalsum); i++)
		{
			finalsum2[i+1] = finalsum[i];
		}
		delete[] finalsum;
		finalsum=finalsum2;
	//	strlen(finalsum) = strlen(finalsum)+1;
	}
	bigInt toReturn(finalsum);
	return toReturn;
}


void bigInt::operator += (const bigInt& intToAdd)
{
	//now that you've done add,  you can use a temporary bigInt
	//and the "this" pointer to add your current object to 
	//intToAdd. then you can use getbigIntArray on the temp
	//to set "this" big int array, possibly cleaning up
	//memory along the way...
	bigInt temp;
	temp = *this + intToAdd;
	delete [] bigIntArray;
	bigIntArray = temp.getBigIntArray();
}

bigInt operator -(const bigInt &firstInt, const bigInt &secondInt)
{
	//set Larger and Smaller Integers
	bigInt largeInt;
	bigInt smallInt;

	if (firstInt>secondInt)
	{
		largeInt = firstInt;
		smallInt = secondInt;
	}
	else
	{
		largeInt = secondInt;
		smallInt = firstInt;
	}
	// create temporary arrays of large and small integers
	char* temp1;
	temp1 = largeInt.getBigIntArray();
	char* temp2;
	temp2 = smallInt.getBigIntArray();

	// set the length of the temp arrays as integers
	int largelen = strlen(temp1);
	int smalllen = strlen(temp2);
	int resultlen = largelen;

	// find the last placement spot of the array as an integer
	int largeIndex = largelen-1;
	int smallIndex = smalllen-1;
	int resultIndex = resultlen-1;
	int carry = 0;

	// set character for temporary character
	char largetempchar;
	char smalltempchar;
	char resulttempchar;

	char* finalresult = new char[resultlen];
	finalresult[resultlen]=NULL;

	while(resultIndex>=0 || largeIndex >=0 || smallIndex>=0)
	{
		if (largeIndex >= 0 && smallIndex >= 0)
		{
			largetempchar = temp1[largeIndex];
			smalltempchar = temp2[smallIndex];
			// temp character to integers
			largetempchar = largetempchar - '0';
			smalltempchar = smalltempchar -'0';

			resulttempchar = largetempchar - smalltempchar - carry;
			carry = 0;

		// check to see if result is less than zero, then a carry is needed
			if (resulttempchar <0)
			{
				carry = 1;
				resulttempchar = resulttempchar+10;
			}

		resulttempchar = resulttempchar + '0';
		finalresult[resultIndex] = resulttempchar;

		}
		else if (largeIndex >=0 && smallIndex < 0)
		{
			largetempchar = temp1[largeIndex];

			largetempchar = largetempchar - '0';

			resulttempchar = largetempchar - carry;
			carry = 0;

			if (resulttempchar < 0)
			{
				carry =1;
				resulttempchar = resulttempchar +10;
			}
			resulttempchar = resulttempchar + '0';
			finalresult[resultIndex] = resulttempchar;
		}
		// check to see if there are leading zeros
		while (largeIndex <=0 && smallIndex <= 0 && finalresult[0] == '0' && (strlen(finalresult)>=2))
		{
			char* secondfinalresult = new char[resultlen];
			secondfinalresult = finalresult;
			delete[] finalresult;
			char* newarray = new char[resultlen-1];

			for (int i=0; i<=resultlen-1;i++)
			{
				resulttempchar = secondfinalresult[i+1];
				finalresult[i] = resulttempchar;
			}
		}
	resultIndex--;
	largeIndex--;
	smallIndex--;
	}
return finalresult;
}



void bigInt::operator -= (const bigInt& intToSubtract)
{
	//If you've done minus, this should be easy
	//you can even use the this ptr.
	bigInt temp;
	temp = this->bigIntArray;
	temp = temp - intToSubtract;
	this->bigIntArray = temp.getBigIntArray();
}

bigInt operator *(const bigInt &firstInt, const bigInt &secondInt)
{
	bigInt counter(0);
	bigInt incriment(1);
	bigInt temp1 = firstInt.getBigIntArray();
	bigInt temp2 = secondInt.getBigIntArray();
	bigInt result;

	while (counter<temp2)
	{
		result+=temp1;
		counter+=incriment;
	}
	return result;
}

bigInt operator /(const bigInt &firstInt, const bigInt &secondInt)
{
	bigInt incriment(1);
	bigInt numerator = firstInt.getBigIntArray();
	bigInt denominator = secondInt.getBigIntArray();
	bigInt result;

	while (numerator>=0)
	{
		cout<<"while loop runs"<<endl;
		numerator-=denominator;
		result+=incriment;
	}
	return result;
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
