#include "point.h"
#include "math.h"
using namespace std;

//default constructor
point::point()
{
	xcor=0.0;
	ycor=0.0;
}
//constructor with x and y passed in
point::point(double x, double y)
{
	xcor=x;
	ycor=y;
}
//copy constructor
point::point(const point& other)
{
	xcor = other.xcor;
	ycor = other.ycor;
}

//overload out stream
ostream& operator<< (ostream& outs, const point& source)
{
	outs << "(" << source.xcor << ",";
	outs <<source.ycor << ")";
	return outs;
}
//overload instream
istream& operator>> (istream& ins, point& target)
{
	ins >> target.xcor;
	ins >> target.ycor;
	return ins;
}
//== overload
bool operator==(const point &p1, const point &p2)
{
	return (p1.get_x()==p2.get_x()) && (p1.get_y()==p2.get_y());
}
//overload =
void point::operator=(const point& p1)
{
	xcor = p1.xcor;
	ycor = p1.ycor;
	
}
//gets x coordinate
double point::get_x() const 
{
	return xcor;
}
//gets y coordinate
double point::get_y() const
{
	return ycor;
}
//sets x coordinate
void point::set_x(double x)
{
	xcor = x;
}
//sets y coordinate
void point::set_y(double y)
{
	ycor = y;
}
//translates a coordinate by adding
void point::translate(double X, double Y)
{
	ycor = ycor + Y;
	xcor = xcor + X;
}
//scales a coordinate by multiplying
void point::scale(double m)
{
	ycor = ycor*m;
	xcor = xcor*m;
}
//reflects the coordinate over the x-axis
void point::reflect_x()
{
	xcor = (-xcor);
}
//reflects the coordinate over the y-axis
void point::reflect_y()
{
	ycor = (-ycor);
}
//rotates a point clockwise around the origin
void point::rotate(double r)
{
	double oldx = xcor;
	xcor = (xcor*cos(r))-(ycor*sin(r));
	ycor = (oldx*cos(r)) + (ycor*cos(r));
}

	
	


