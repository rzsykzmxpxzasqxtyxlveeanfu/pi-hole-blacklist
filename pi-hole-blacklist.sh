#!/bin/sh

# move to the dir
cd /home/pi/pi-hole-blacklist-git/

# sort blacklist, remove blank lines and write to blacklist.txt
sort /etc/pihole/blacklist.txt | sed '/^$/d' > blacklist.txt

# add the new file to git
git add .

# commit
git commit -F blacklist.txt

# push to github
git push origin master
