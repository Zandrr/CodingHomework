#include "line.h"
using namespace std;

line::line()
{
	p1 = point(1,0);
	p2 = point(-1,0);
}

line::line(point first)
{
	p1 = point(0,0);
	p2 = point(first);
}

line::line(point first, point second)
{
	p1 = point(first);
	p2 = point(second);
}
//copy constructor
 line::line(const line& other)
 {
	 p1 = other.p1;
	 p2 = other.p2;
 }
 //overload ==
bool operator==(const line& l1, const line& l2)
{
	return (l1.get_p1() == l2.get_p1() && l1.get_p2() == l2.get_p2());
}

//overload =
void line::operator = (const line& l1)
{
	p1 = l1.p1;
	p2 = l1.p2;
	
	
}
//cin overload
istream &operator>>(istream& ins, line& target)
{
	ins >> target.p1;
	ins >> target.p2;
	return ins;
}
//cout overlaod
ostream &operator << (ostream& outs, line& source)
{
	//create point objects that are p1 and p2 private variables
	point p1(source.get_p1());
	point p2(source.get_p2());
	
if(p1.get_x() == p2.get_x())
	{
		outs <<"x = " << p1.get_x();
	}
if(p1.get_y() ==  p2.get_y())
	{
		outs << "y = " << p1.get_y();
	}
else{
	outs <<"y = " << source.slope() << "x + " << p1.get_y() - source.slope() * p1.get_x();
		
}
return outs;
}
 
 //get p1 and get p2
 
 point line::get_p1() const
 {
	 return p1;
 }
 point line::get_p2() const
 {
	 return p2;
 }

//slope of line

double line::slope()
{
	 return ((p2.get_y() - p1.get_y()) / (p2.get_x() - p1.get_x()));
 }
 //translate
 
 void line::translate(double X, double Y)
 {
	 p1.translate(X, Y);
	 p2.translate(X,Y);
 }
//reflect_x
void line::reflect_x()
{
	p1.reflect_y();
	p2.reflect_y();
}
//reflect_y
void line::reflect_y()
{
	p1.reflect_x();
	p2.reflect_x();
}
