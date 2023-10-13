#!/bin/bash

# github.com/huskyctf
# often I will start a challenge by setting up a folder structure

dir=$(mktemp -d ./ctf-XXXX)
mkdir $dir/www $dir/nmap $dir/creds

# add index.html to prevent directory listing of our temp webserver
touch $dir/www/index.html

# setup a place for general notes and lists of found usernames or passwords
touch $dir/notes.md $dir/creds/usernames.txt $dir/creds/passwords.txt

# generate a key to be used if access is gained on the target
ssh-keygen -q -f $dir/id_rsa -t rsa -C '' -N ''
mv $dir/id_rsa.pub $dir/www/id_rsa.pub
