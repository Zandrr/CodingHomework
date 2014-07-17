#ifndef LINE_H_
#define LINE_H_
#include "point.h"

class line
{
	
public:
//constructors
	line();
	line(point first);
	line(point first, point second);
	
//copy constructor
line(const line& other);

//friend functions for cin and cout
friend std::istream& operator >>(std::istream& ins, line& target);
friend std::ostream& operator <<(std::ostream& outs, line& source);
//member functions
double slope();
void translate(double x, double y);
void reflect_x();
void reflect_y();
point get_p1() const;
point get_p2() const;

//= overload
void operator = (const line& l1);


private:
	point p1;
	point p2;

};
//== overloader
bool operator == (const line& l1, const line& l2);


#endif
