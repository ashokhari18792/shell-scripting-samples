## bash: acronym for bourne again shell, a shell is a command line interpreter which means
#   it provides a way to enter a human readable commands that get the computer to do something.

## tilde expansion: is a function of shell not the OS.

# ~   -->     $HOME
# ~ashok  -->     ashok's home dir
# ~+  -->     $PWD
# ~-  -->     $OLDPWD
# ~1  -->     `dirs +1`
# ~2  -->     `dirs +2`
# ~-1     -->     `dirs -1`

# Note: dirs and ~1, ~-1 are used in conjunction with 'pushd' and 'popd'

## tty: teller type machine used to access the system
# Linux system spins up 8 tty's on boot and usuallay puts Desktop env on tty7
# why tty's are useful - they allow us to access the system when Desktop/GUI was crashed which
#    is running on tty7

# clear/ctrl+L: clears the terminal
# if u login to another system using ssh then the prompt will tell u that.
# $- on the prompt tells that we are logged in as a normal user and don't have
#   privileges to run the administration commands.

# man bash - get the user manual for bash.

## Unix file system:
# filesytem is responsible for organizing files into directory an also to write data to the 
#   harddrive.
# A filesystem can include many diff storage devices and network shares that hook it up to the
#   computer.
# / - denotes the root of the filesystem
# etc: config files for the system were held
echo 'Below are the config files for configuring parameters across the system:'
ls /etc

# dev: devices, everything that hooked up to the system is associated with a file in dev
# even running process are represented as a files so they has to have a place for them in dev folder.
echo 'Devices that are hooked-up to the system are:'
ls /dev

# home: folder where user information is stored
# usr: universal system resources contains the executables and binaries
# /usr/lib: place where libraries will be stored
# var: place where temporary data and logs will be stored, used mostly for troubleshooting the
#   system.

## basic linux commands
# display the list of files in the current dir
ls

# list all files including hidden files if any
# a file can be made hidden by preceding the name with a '.'
ls -a

# to get detailed info with the ls
ls -a -l

## switch between multiple directories using pushd and popd
# pushd takes to the directory which was supplied as an arg
echo 'You are currently in:'
pwd
pushd /home/503110496
echo 'You were switched to:'
pwd
popd
echo 'You were again switched back to:'
pwd

## using touch to modify date of the existing file.
# touch file1 will modify the date of the file to the point when the cmd was run.
touch file1 file2
ls -al

# mv: command used to rename a file
# lets rename file1 to file1.txt using mv command
mv file1 file1.txt
ls -al

# creating a directory and moving the file into it
mkdir junk
mv file1.txt junk/
ls -al junk/

# removing a directory recurively using -r flag
rm -r junk
rm file2

ls -al