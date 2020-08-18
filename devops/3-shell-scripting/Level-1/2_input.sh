
# -----------------------------------------------------
# Ask the User for Input
# -----------------------------------------------------


# introduction.sh

    #!/bin/bash
    # Ask the user for their name
    echo Hello, who am I talking to?
    read varname
    echo It\'s nice to meet you $varname

# -----------------------------------------------------

# login.sh


    #!/bin/bash
    # Ask the user for login details
    read -p 'Username: ' uservar
    read -sp 'Password: ' passvar
    echo
    echo Thankyou $uservar we now have your login details

# -----------------------------------------------------

# multi_input.sh

    #!/bin/bash
    # Demonstrate how read actually works
    echo What subjects do you like?
    read sub1 sub2 sub3
    echo Your first car was: $sub1
    echo Your second car was: $sub2
    echo Your third car was: $sub3

# -----------------------------------------------------

# summary.sh

    #!/bin/bash
    # A input from standard input source
    echo 
    echo ====================================
    echo
    cat /dev/stdin | cut -d: -f2 | sort



# users.txt

#     user1:x:User One
#     user2:x:Uer Two



# > cat users.txt | ./summary


# -------------------------------------------------------------------------


# So we now have 3 methods for getting input from the user:

#     - Command line arguments
#     - Read input during script execution
#     - Accept data that has been redirected into the Bash script 


# -------------------------------------------------------------------------



