#!/bin/bash

# ignore blank lines and comments in argument; while reading each line and do
grep -vE '^(\s*$|#)' $1 | while read LINE; do 

# if text is a valid filename print statement
if [ -f "$LINE" ]; then
  echo "$LINE - That file exists"

# if text is a valid directory then print statement
elif [ -d "$LINE" ];then
  echo "$LINE - That's a directory"

 # otherwise print this statement 
else
  echo "$LINE - I don't know what that is!"

# end if elif else   
fi

#end while loop
done
exit 0

# Reference https://stackoverflow.com/questions/24537483/bash-loop-to-get-lines-in-a-file-skipping-comments-and-blank-lines