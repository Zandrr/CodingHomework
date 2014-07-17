#include <iostream> 
#include <cstdlib>
#include "point.h"
using namespace std;

int main( )
{
	point p1(5,6);
	p1.rotate(5);
	cout<<"x is now: "<<p1.get_x();
	cout<< "and y is now "<<p1.get_y()<<endl;
	point p2(p1);
	cout<<p2.get_x()<<endl;
}
