## display contents of the file using cat
# cat: concatenate one or more files and diplay the text on the console.
# less: used to display and page through the contents of the file.

## redirection:
# create a file and redirect input to the contents of the file
# to append the contents to a file while using input redirection use '>>'
echo 'Junk file one created' > junk1.txt
echo "It's name is junk1.txt" >> junk1.txt

echo 'Junk file two created' > junk2.txt
echo "It's name is junk2.txt" >> junk2.txt



ls -l

# using cat to display the concatenated contents of two files together
# cat junk1.txt junk2.txt | less
cat junk1.txt junk2.txt
rm -f junk1.txt junk2.txt

ls -l

## text editors
# cygwin installing packages
# cygwin executable accepts params to install packages
# cd C:\Users\503110496\cygwin-installer
# setup-x86_64.exe -q -P nano
# setup-x86_64.exe -q -P vim
# https://github.com/transcode-open/apt-cyg
# https://stackoverflow.com/questions/9260014/how-do-i-install-cygwin-components-from-the-command-line

## sudo in cygwin:
# to get the elevated privileges cygwin has to be opened with administartor in windows
# https://github.com/nu774/sudo-for-cygwin
# https://superuser.com/questions/122418/theres-no-sudo-command-in-cygwin
