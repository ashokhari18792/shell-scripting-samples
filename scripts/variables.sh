#!/bin/bash

# When referring to the value stored in a variable use $<variable-name>
# echo $PATH

# when writing to a variable simply use it's name
# Variable name alone will be treated as a normal string when its not a part of the 
# assignment statement.
MY_NAME=ashok
echo "The variable MY_NAME is $MY_NAME"

# A shell script is interpreted and never compiled
# There is no need to explicitly declare a variable before using it.
# An unset variable is equivalent to a variable containing a null string.
# An unset/undefined variable doesn't throw an error. 

echo "Your name is: $YOUR_NAME"
YOUR_NAME=hari
echo "Your name is: $YOUR_NAME"

## Assigning value to a variable by an explicit definition

# Invalid assignment syntaxes
# variable = foo : is treated as single command with two args = and foo
# it will try to invoke a command called variable
# variable = foo : throws error 'variable: command not found'

# A technique to run a command with a certain environment without changing the environment of the 
# calling shell
# call the command prefixed by the variable assignment
# Eg: LD_LIBRARY_PATH=/usr/mozilla/lib firefox

# So, variable= foo is equivalent to calling a foo command with blank variable
# variable= foo : throws error 'foo: command not found'
variable=foo
echo $variable

## Setting a variable with read command interactively
# -n switch to echo instructs echo not to put newline char at the end of the line
echo -n "Enter your name:"
read username
echo "You have entered your name as: $username"

# using grep search the environment variables by name
# set will display all the environment variables
set | grep "name="

## Read from file to a variable
# Eg: display the list of available shells from file /etc/shells
read SHELLS < /etc/shells
echo 'available shells list:'
# echo $SHELLS
# This will read only the first line of the file
# reading the file by looping around until eof
# read returns non-zero if an end of file was reached

while read shells
do
    echo $shells
    # sleep 1
    # date
done < /etc/shells
# this directs the contents of the file into the loop  

## Setting a variable by a command substitution
# %A flag on date command gives the 
TODAY=`date +%A`
echo "Today is: $TODAY"

