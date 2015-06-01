##Ruby Logic Gate
This is a simple implementation of logic gates in Ruby. It was a technical interview challange that required me to create Ruby classes that could add binary values (0 or 1) to a method. Then I could call an output method which would parse the array - for the AND gate, if there are any 0's, the output method returns 0. For the OR gate, if there are any 1's, the output method returns 1.

###Metaprogramming
I used the Ruby metaprogramming tool "define method" to create a large number of methods on the fly - input_a through input_z. This allowed me to avoid having to specify how many inputs there are in the logic gate like the technical interview originally demanded. It also reduced the program length from 30-60 lines to 13 lines, while increasing readability as well.

###Possible Improvements
After completing this challenge, I realized that had I used the Ruby Metaprogramming tool "method missing" instead of "define method", I would have unlimited input methods, as opposed to the 26 created by define method. I also believe I could optimize performance as well.
