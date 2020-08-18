

# -----------------------------------------------
# While Loops
# -----------------------------------------------

# while_loop.sh

#!/bin/bash
# Basic while loop
counter=1
while [ $counter -le 10 ]
do
echo $counter
((counter++))
done
echo All done

# -----------------------------------------------
# Until Loops
# -----------------------------------------------


#!/bin/bash
# Basic until loop
counter=1
until [ $counter -gt 10 ]
do
echo $counter
((counter++))
done
echo All done



# -----------------------------------------------
# For Loops
# -----------------------------------------------

# for_loop.sh

#!/bin/bash
# Basic for loop
names='nag insha lana'
for name in $names
do
echo $name
done
echo All done



# for_loop_series.sh


#!/bin/bash
# Basic range in for loop
for value in {1..5}
do
echo $value
done
echo All done


# for_loop_stepping.sh

#!/bin/bash
# Basic range with steps for loop
for value in {10..0..2}
do
echo $value
done
echo All done



# convert_html_to_php.sh

#!/bin/bash
# Make a php copy of any html files
for value in $1/*.html
do
cp $value $1/$( basename -s .html $value ).php
done


# -----------------------------------------------
# Break
# -----------------------------------------------


# copy_files.sh

#!/bin/bash
# Make a backup set of files
for value in $1/*
do
used=$( df $1 | tail -1 | awk '{ print $5 }' | sed 's/%//' )
if [ $used -gt 90 ]
then
echo Low disk space 1>&2
break
fi
cp $value $1/backup/
done



# -----------------------------------------------
# Continue
# -----------------------------------------------



#!/bin/bash
# Make a backup set of files
for value in $1/*
do
if [ ! -r $value ]
then
echo $value not readable 1>&2
continue
fi
cp $value $1/backup/
done


# -----------------------------------------------
# Select
# -----------------------------------------------

#!/bin/bash
# A simple menu system
actions='start stop restart exit'
PS3='Select character: '
select action in $actions
do
if [ $action == 'ecit' ]
then
break
fi
echo Hello $action
done
echo Bye



# Summary
# while do done
# Perform a set of commands while a test is true.

# until do done
# Perform a set of commands until a test is true.

# for do done
# Perform a set of commands for each item in a list.

# break
# Exit the currently running loop.

# continue
# Stop this iteration of the loop and begin the next iteration.

# select do done
# Display a simple menu system for selecting items from a list.