
# -----------------------------------------------------------
# Let
# -----------------------------------------------------------


# let_example.sh

#!/bin/bash
# Basic arithmetic using let
let a = 5 + 4
echo $a # 9
let "a = 5 + 4"
echo $a # 9
let a++
echo $a # 10
let "a = 4 * 5"
echo $a # 20
let "a = $1 + 30"
echo $a # 30 + first command line argument


# ./let_example.sh 15


# -----------------------------------------------------------
# Expr
# -----------------------------------------------------------


# expr_example.sh


#!/bin/bash
# Basic arithmetic using expr
expr 5 + 4
expr "5 + 4"
expr 5+4
expr 5 \* $1
expr 11 % 2
a=$( expr 10 - 3 )
echo $a # 7


# ./expr_example.sh 12


# -----------------------------------------------------------
# Double Parentheses
# -----------------------------------------------------------

# expansion_example.sh

#!/bin/bash
# Basic arithmetic using double parentheses
a=$(( 4 + 5 ))
echo $a # 9
a=$((3+5))
echo $a # 8
b=$(( a + 3 ))
echo $b # 11
b=$(( $a + 4 ))
echo $b # 12
(( b++ ))
echo $b # 13
(( b += 3 ))
echo $b # 16
a=$(( 4 * 5 ))
echo $a # 20


# ./expansion_example.sh

# -----------------------------------------------------------
# Length of a Variable
# -----------------------------------------------------------

# length_example.sh

#!/bin/bash
# Show the length of a variable.
a='Hello World'
echo ${#a} # 11
b=4953
echo ${#b} # 4


# ./length_example.sh




# Summary

# let expression
# Make a variable equal to an expression.

# expr expression
# print out the result of the expression.

# $(( expression ))
# Return the result of the expression.

# ${#var}
# Return the length of the variable var.




# Activities

# Let's dive in with arithmetic.

# Create a simple script which will take two command line arguments and then multiply them together using each of the methods detailed above.
# Write a Bash script which will print tomorrows date. (Hint: use the command date)
# Remember when we looked at variables we discovered $RANDOM will return a random number. This number is between 0 and 32767 which is not always the most useful. Let's write a script which will use this variable and some arithmetic (hint: play with modulus) to return a random number between 0 and 100.
# Now let's play with the previous script. Modify it so that you can specify as a command line argument the upper limit of the random number. Can you make it so that a lower limit can be specified also? eg. if I ran ./random.sh 10 45 it would only return random numbers between 10 and 45.