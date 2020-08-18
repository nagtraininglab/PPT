
# -------------------------------------------------------------------
# variable
# -------------------------------------------------------------------

# command line variables

# mycopy.sh

    #!/bin/bash
    # A simple copy script
    cp $1 $2
    # Let's verify the copy worked
    echo Details for $2
    ls -lh $2


# ---------------------------------
# Other Special Variables
# ---------------------------------

    # $0 - The name of the Bash script.
    # $1 - $9 - The first 9 arguments to the Bash script. (As mentioned above.)
    # $# - How many arguments were passed to the Bash script.
    # $@ - All the arguments supplied to the Bash script.
    # $? - The exit status of the most recently run process.
    # $$ - The process ID of the current script.
    # $USER - The username of the user running the script.
    # $HOSTNAME - The hostname of the machine the script is running on.
    # $SECONDS - The number of seconds since the script was started.
    # $RANDOM - Returns a different random number each time is it referred to.
    # $LINENO - Returns the current line number in the Bash script.


# ---------------------------------
# Setting Our Own Variables
# ---------------------------------


# simplevariables.sh

    #!/bin/bash
    # A simple variable example
    first=Hello
    second=world
    echo $first $second
    echo
    sampledir=/etc
    ls $sampledir

# ---------------------------------
# Command Substitution
# ---------------------------------

myvar=$( ls /etc | wc -l )


# ---------------------------------
# Exporting Variables
# ---------------------------------

# script1.sh

    #!/bin/bash
    # demonstrate variable scope 1.
    var1=blah
    var2=foo
    # Let's verify their current value
    echo $0 :: var1 : $var1, var2 : $var2
    export var1
    export var2


    ./script2.sh
    # Let's see what they are now
    echo $0 :: var1 : $var1, var2 : $var2

# script2.sh

    #!/bin/bash
    # demonstrate variable scope 2
    # Let's verify their current value
    echo $0 :: var1 : $var1, var2 : $var2
    # Let's change their values
    var1=flop
    var2=bleh    


# Summary:

#     $1, $2, ...
#     The first, second, etc command line arguments to the script.
    
#     variable=value
#     To set a value for a variable. Remember, no spaces on either side of =
    
#     Quotes " '
#     Double will do variable substitution, single will not.
    
#     variable=$( command )
#     Save the output of a command into a variable
    
#     export var1
#     Make the variable var1 available to child processes.    
