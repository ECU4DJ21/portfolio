#!/bin/bash

until [[ $url = "exit" ]]

do

  read -p "Enter the file url to download or type exit to quit: " url

  if [[ $url == "https://"* ]] || [[ $url == "http://"* ]]; then

    read -p "Please type your download location: " user_dir

    mkdir -p  $user_dir

    wget $url -P $user_dir

    elif [[ $url = "exit" ]]; then

    echo "Thank you. Goodbye!"
    exit 0

  else
    echo "This is not a valid url"
  fi

done
exit 0