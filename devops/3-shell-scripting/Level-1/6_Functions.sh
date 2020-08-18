
#1
function say_hello{
    echo hello
}
#2
say_bye(){
    echo bye
}

# -----------------------------------------------------
# function_example.sh
# -----------------------------------------------------

#!/bin/bash
# Basic function
print_something () {
echo Hello I am a function
}
print_something
print_something

# -----------------------------------------------------
# arguments_example.sh
# -----------------------------------------------------

#!/bin/bash
# Passing arguments to a function
print_something () {
echo Hello $1
}
print_something Mars
print_something Jupiter

# -----------------------------------------------------
# return_status_example.sh
# -----------------------------------------------------

#!/bin/bash
# Setting a return status for a function
print_something () {
echo Hello $1
return 5
}
print_something Mars
print_something Jupiter
echo The previous function has a return value of $?


# return_hack.sh

#!/bin/bash
# Setting a return value to a function
# lines_in_file () {
# cat $1 | wc -l
# }
# num_lines=$( lines_in_file $1 )
# echo The file $1 has $num_lines lines in it.



# -----------------------------------------------------
# Variable Scope
# -----------------------------------------------------


# local_variables.sh

#!/bin/bash
# Experimenting with variable scope

var_change () {
local var1='local 1'
echo Inside function: var1 is $var1 : var2 is $var2
var1='changed again'
var2='2 changed again'
}

var1='global 1'
var2='global 2'
echo Before function call: var1 is $var1 : var2 is $var2
var_change
echo After function call: var1 is $var1 : var2 is $var2



# Overriding Commands


#!/bin/bash
# Create a wrapper around the command ls
ls () {
command ls -lh
}
ls