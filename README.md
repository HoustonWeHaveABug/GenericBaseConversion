# GenericBaseConversion

A base conversion class and main program that allows to convert a number from/to any base. 

The main program takes 3 arguments on the command line:
- The input base digits
- The output base digits
- The input number

As the input/output bases are expressed by a list of digits, custom digits maybe used instead of the standard ones.

The class includes 2 methods:
- initialize: a constructor that calculates the output number from the 3 arguments passed to this method (input base digits/output base digits/input number)
- output: prints the output number calculated by the constructor

Example: convert 255 from standard base 10 to standard base 16

ruby base_conversion.rb 0123456789 0123456789ABCDEF 255
