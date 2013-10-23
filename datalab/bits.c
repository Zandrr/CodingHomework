/* 
 * CS:APP Data Lab 
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#include "btest.h"
#include <limits.h>

/*
 * Instructions to Students:
 *
 * STEP 1: Fill in the following struct with your identifying info.
 */
team_struct team =
{
   /* Team name: Replace with either:
      Your login ID if working as a one person team
      or, ID1+ID2 where ID1 is the login ID of the first team member
      and ID2 is the login ID of the second team member */
    "alca5676 + abgordon", 
   /* Student name 1: Replace with the full name of first team member */
   "alex campbell",
   /* Login ID 1: Replace with the login ID of first team member */
   "alca5676",

   /* The following should only be changed if there are two team members */
   /* Student name 2: Full name of the second team member */
   "Andrew Gordon",
   /* Login ID 2: Login ID of the second team member */
   "abgordon"
};

#if 0
/*
 * STEP 2: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.
#endif

/*
 * STEP 3: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the btest test harness to check that your solutions produce 
 *      the correct answers. Watch out for corner cases around Tmin and Tmax.
 */
//
// 15 problems, 40 points
// 2 - rating 1
// 3 - rating 2
// 7 - rating 3
// 3 - rating 4

// rating 1

/*
 * isZero - returns 1 if x == 0, and 0 otherwise 
 *   Examples: isZero(5) = 0, isZero(0) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 2
 *   Rating: 1
 */
int isZero(int x) {



  return (!x);  //if any bit is a 1 it returns 0

}
/* 
 * bitAnd - x&y using only ~ and | 
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y) {
  return ~(~x|~y); //taking the complement of both and ORing them is the exact opposite of ANDing
  //so take the complement and we have AND
}
// rating 2
/* 
 * fitsBits - return 1 if x can be represented as an 
 *  n-bit, two's complement integer.
 *   1 <= n <= 32
 *   Examples: fitsBits(5,3) = 0, fitsBits(-4,3) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int fitsBits(int x, int n) {
  int shift = 32 + (~n+1); // creates a shift that is 32 - n

  return !(((x << shift) >> shift) ^ x); // if fits it does not drop any bits and when moved back it lines up
  //so xoring results in 0.  if it does not a fit a bit or more is cut off resulting in at least 1 bit to be 1 with XOR
}
/* 
 * getByte - Extract byte n from word x
 *   Bytes numbered from 0 (LSB) to 3 (MSB)
 *   Examples: getByte(0x12345678,1) = 0x56
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int getByte(int x, int n) {
  return (0xFF & ( x >> 8*n));  // x is shifted right by n(8); truncates 78 then masks all but LSB
  //0xFF masks all but the least significant byte (n)
}
/* 
 * isNotEqual - return 0 if x == y, and 1 otherwise 
 *   Examples: isNotEqual(5,5) = 0, isNotEqual(4,5) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 2
 */
int isNotEqual(int x, int y) {
  return !!(x^y); // if they're equal XORing should return 0000, so we ! it to get 1 then we ! it again to get just one 0
}
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 2
 */
int bitXor(int x, int y) {
    int a = x & y; // get and
    int b = ~x & ~y; // get opposite
    int c = ~a & ~b; //want inverse of and and opposite
    return c;
}
/* 
 * copyLSB - set all bits of result to least significant bit of x
 *   Example: copyLSB(5) = 0xFFFFFFFF, copyLSB(6) = 0x00000000
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int copyLSB(int x) {

return ((x<<31)>>31); //shift x left 31 to get rid of all but lsb; 
//shift x right by 31 to copy lsb to all positions


}
// rating 3
/* 
 * sum3 - x+y+z using only a single '+'
 *   Example: sum3(3, 4, 5) = 12
 *   Legal ops: ! ~ & ^ | << >>
 *   Max ops: 16
 *   Rating: 3
 */
/* A helper routine to perform the addition.  Don't change this code */
static int sum(int x, int y) {
  return x+y;
}
int sum3(int x, int y, int z) {
  int word1 = (x^z)^y; // sum of all without carries
  int word2 = (((x&y)|(x&z)|(y&z)) << 1); // all the carries shifted for carries
  /**************************************************************
     Fill in code below that computes values for word1 and word2
     without using any '+' operations 
  ***************************************************************/
  /**************************************************************
     Don't change anything below here
  ***************************************************************/
  return sum(word1,word2);
}
/* 
 * reverseBytes - reverse the bytes of x
 *   Example: reverseBytes(0x01020304) = 0x04030201
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 3
 */
int reverseBytes(int x) {

int bytethree = (x>>24) & 0xFF; //0x0000001
int bytetwo = (x>>16) & 0xFF;//0x00000002
int byteone = (x>>8) & 0xFF; //0x0000003
int bytezero = (x & 0xFF); //0x00000004

bytetwo = bytetwo <<8;    //0x00000200
byteone = byteone << 16;  //0x00030000
bytezero = bytezero <<24; //0x04000000

return (bytethree|bytetwo|byteone|bytezero);
}
/* 
 * isNegative - return 1 if x < 0, return 0 otherwise 
 *   Example: isNegative(-1) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 6
 *   Rating: 3
 */
int isNegative(int x) {
  x = x >> 31; // if x<0 -> all 1's else if x>=0 -> all 0's
  //x = x + 1; //neg numbers = 0 pos numbers = 1
  return !!x; //0 ->1 , 1->0
}
/* 
 * isLess - if x < y  then return 1, else return 0 
 *   Example: isLess(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLess(int x, int y) {

  
        // If signs are the same, m should be neg.
        int m = (x + (~y + 1)) >> 31; // 4 + (-5) and MSB to LSB if x>y then 0 if x<y then 1
        int n;
        x = x >> 31;//MSB to LSB
        y = y >> 31;//MSB to LSB
        n = (x^y);//if different gives 1
        n = (n & x) | (~n & m);
        return (n & 1) | (~n & 0); //(x and y are same sign &  1) | (x and y are different signs  & 0) 
}
// rating 4
/* 
 * isNonZero - Check whether x is nonzero using
 *              the legal operators except !
 *   Examples: isNonZero(3) = 1, isNonZero(0) = 0
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 10
 *   Rating: 4 
 */
int isNonZero(int x) {
  int x_signed, negx_signed;
  x_signed = (x >> 31) & 1; // get x's  MSB
  negx_signed = ((~x + 1) >> 31) & 1; // negate x, get its sign bit
  //x and -x are opposite so ORing -x and x should give 1 if nonzero and 0 if 0
  return x_signed | negx_signed;
}
/*
 * bitCount - returns count of number of 1's in word
 *   Examples: bitCount(5) = 2, bitCount(7) = 3
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int bitCount(int x) {
  // x = (x & 0x55555555) + (( x >> 1) & 0x55555555);
  // x = (x & 0x33333333) + (( x >> 2) & 0x33333333);
  // x = (x & 0x0F0F0F0F) + (( x >> 4) & 0x0F0F0F0F);
  // x = (x & 0x00FF00FF) + (( x >> 8) & 0x00FF00FF);
  // x = (x & 0x0000FFFF) + ((x >> 16) & 0x0000FFFF);

  int mask1 = 0x55 | (0x55 << 8);
  int mask1a = mask1 | (mask1 << 16); //0x55555555
  int mask2 = 0x33 | (0x33 << 8);
  int mask2a = mask2 | (mask2 << 16); //0x33333333
  int mask3 = 0x0F | (0x0F << 8) | (0x0F << 16) | (0x0F << 24); //0x0F0F0F0F
  int mask4 = 0xFF | (0xFF << 16);  //0x00FF00FF
  int mask5 = 0xFF | (0xFF << 8);   //0x0000FFFF

  x = (x & mask1a) + (( x >> 1) & mask1a); //adds groups of 1 (0 1)and put result in 0-1 (masks every other bit)
  x = (x & mask2a) + (( x >> 2) & mask2a); //adds groups of 2  (01 23) and puts result in 0-4, 4-8 ect (masks every 2 bits)
  x = (x & mask3) + (( x >> 4) & mask3);   //adds groups of 4 (01234 5678) and puts result in 0-8 8-16 ect (masks every 4 bits)
  x = (x & mask4) + (( x >> 8) & mask4);  //adds groups of 8 (masks every 8 bits)
  x = (x & mask5) + ((x >> 16) & mask5); //groupings are bit count in one binary number now (masks every 16 bits)
  return x;
}
/* 
 * bang - Compute !x without using !
 *   Examples: bang(3) = 0, bang(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int bang(int x) {


  int x_signed, negx_signed;
  x_signed = (x >> 31) & 1; // get x's  MSB (sign bit kinda)
  negx_signed = ((~x + 1) >> 31) & 1; // negate x, get its MSB *sign bit*
  //x and -x are opposite so ORing -x and x should give 1 if nonzero and 0 if 0
  return (x_signed | negx_signed)^1; //if 1 gives 0 if 0 gives 1

 
}
/*
 * bitParity - returns 1 if x contains an odd number of 0's
 *   Examples: bitParity(5) = 0, bitParity(7) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int bitParity(int x) {
  x = ( x >> 16 ) ^ x;
  x = ( x >> 8 ) ^ x;
  x = ( x >> 4 ) ^ x;
  x = ( x >> 2 ) ^ x;
  x = ( x >> 1) ^ x;
  return (x & 1);
}//fold on top of over and over to make pairs of 1's cancel eventually leaving one 1 or one 0
