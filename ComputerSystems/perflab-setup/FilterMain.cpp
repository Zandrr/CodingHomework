#include <stdio.h>
#include "cs1300bmp.h"
#include <iostream>
#include <fstream>
#include "Filter.h"

using namespace std;

#include "rtdsc.h"

//
// Forward declare the functions
//
Filter * readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int
main(int argc, char **argv)
{

  if ( argc < 2) {
    fprintf(stderr,"Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  int samples = 0;

  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename = "filtered-" + filterOutputName + "-" + inputFilename;
    struct cs1300bmp *input = new struct cs1300bmp;
    struct cs1300bmp *output = new struct cs1300bmp;
    int ok = cs1300bmp_readfile( (char *) inputFilename.c_str(), input);

    if ( ok ) {
      double sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *) outputFilename.c_str(), output);
    }
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);

}

struct Filter *
readFilter(string filename)
{
  ifstream input(filename.c_str());

  if ( ! input.bad() ) {
    int size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    int div;
    input >> div;
    filter -> setDivisor(div);
    for (int i=0; i < size; i++) {
      for (int j=0; j < size; j++) {
	int value;
	input >> value;
	filter -> set(i,j,value);
      }
    }
    return filter;
  }
}


double
applyFilter(struct Filter *filter, cs1300bmp *input, cs1300bmp *output)
{

  long long cycStart, cycStop;

  cycStart = rdtscll();

  output -> width = input -> width;
  output -> height = input -> height;
  int f00 = filter -> get(0,0);
  int f01 = filter -> get(0,1);
  int f02 = filter -> get(0,2);
  int f03 = filter -> get(1,0);
  int f04 = filter -> get(1,1);
  int f05 = filter -> get(1,2);
  int f06 = filter -> get(2,0);
  int f07 = filter -> get(2,1);
  int f08 = filter -> get(2,2);
  int IW = input -> width;
  int IH = input -> height;
  int divisor = filter -> getDivisor();
		for(int plane = 0; plane < 3; plane++){
			for(int row = 1; row < (IH) - 1 ; row++){
				for(int col = 1; col < (IW) - 1; col++) {
					
	int value = 0;
			  
	int value1=1,value2=1,value3=1,value4=1,value5=1,value6=1,value7=1,value8=1,value9=1;
	    value1 += input -> color[plane][row -1][col -1]* f00;
	    value2 +=input -> color[plane][row -1][col]* f01;
	    value3 +=input -> color[plane][row -1][col + 1]* f02;
	    value4 +=input -> color[plane][row ][col - 1]* f03;
	    value5 += input -> color[plane][row ][col]* f04;
	    value6 +=input -> color[plane][row ][col + 1]* f05;
	    value7 +=input -> color[plane][row + 1][col - 1]* f06;
	    value8 +=input -> color[plane][row + 1][col]* f07;
	    value9 +=input -> color[plane][row + 1][col + 1]* f08;
		 

	value = (value1+value2+value3+value4+value5+value6+value7+value8+value9) / divisor;
	if ( value  < 0 ) { value = 0; }
	if ( value  > 255 ) { value = 255; }
	output -> color[plane][row][col] = value;
      }
    }
  }

  cycStop = rdtscll();
  double diff = cycStop - cycStart;
  double diffPerPixel = diff / (output -> width * output -> height);
  fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n",
	  diff, diff / (output -> width * output -> height));
  return diffPerPixel;
}
