#include<cassert>//provides assert
#include "mug.h"
//these comments should help you, as the programmer of this out
//i.e. everyone else who gets handed this code
//should rely on the comments in the .h file

mug::mug() //default constructor for mug class
{
	amountFilled=0;
}

mug::mug(double initialFill) //Constructor with an initial fill passed in
							 //**IMPLEMENT THIS**
{
	amountFilled = initialFill;
}

void mug::fillMug(double fillAmount) //adds the fill amount to the mug 
									//**IMPLEMENT THIS**, make sure fillAmount
 									//is greater or equal to zero (i.e. assert 
 									//something....)
{ 
	amountFilled = amountFilled + fillAmount;
}

void mug::empty() //empties the mug **IMPLEMENT THIS**
{
	amountFilled = 0.0;
}

double mug::getFillAmount() const //looks at the mug and returns the
{                                 //amount it's filled to
	return amountFilled;
}

bool mug::isEmpty() const   //checks if the mug is empty and return s
{
	return (amountFilled==0.0);
}
