/*pseudo-code for mug.h
File: Mug.h
Class Provided: A class that simulates a magic mug that can hold
an infinite amount.


Constructors for the mug class:
	mug()
		Postcondition: amountFilled=0.0
		
	mug(double initialFill)
		Precondition: initialFill>=0.0
		Postcondition: amountFilled equals initialFill
	
Modification Member Functions
	 void fill(double amount)
	 	Precondition: amount>=0.0
	 	Postcondition: amountFilled is now increased by amount
	 	
	 void empty()
	 	Postcondition: the cup is emptied
	 	
Constant Member Functions
	double getFillAmount() const
	Postcondition: The value returned is the amount the cup is currently filled to
*/

#ifndef MUG_H_   //macroguard that stops the header from being included twice.
#define MUG_H_  //Including the header twice stops the compilation, Note no Semilcolon

class mug //a magic mug that holds infinite amounts of non-alcoholic drinks
{
	public:
		//Constructors
		mug(); // default constructor
		mug(double initialFill); //mug constructor, starts at 0.0 if unspecified
		//Public Members
		void fillMug(double amount); //Adds to the amountFilled
		void empty(); //empties our mug
		
		//Constant Member Functions
		double getFillAmount() const; //gets the current amount the cup is filled to
		bool isEmpty() const;
			
	private:
		double amountFilled; //private member variable
}; //NOTE THIS SEMICOLON AT THE END OF THIS CLASS DEFINITION!

#endif   
