#ifndef POINT_H_ //macrogaurd
#define POINT_H_
#include <iostream>
class point
{
public:
//constructors
	point();
	point(double x, double y);
//copy constructor
point(const point &other);

	
//for cin
friend std::istream& operator >>(std::istream& ins, point& target);


//for cout
friend std::ostream& operator <<(std::ostream& outs, const point& source);	

//public members
	double get_x() const;
	double get_y() const;
	void set_x(double x);
	void set_y(double y);
	void translate(double X, double Y);
	void scale(double m);
	void reflect_x();
	void reflect_y();
	void rotate(double r);
	void operator =(const point& p1);
private:
	double xcor;
	double ycor;

};
bool operator == (const point& p1,const point &p2);

#endif
