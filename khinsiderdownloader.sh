#!/bin/bash

main_url=$1

# First get the initial webpage that holds all the links
wget $main_url

# Grep for each mp3 link, these mp3 pages have the real mp3 link
grep --color "$main_url" * | cut -d '"' -f2 | uniq > links.txt

# Download each of these mp3 pages that hold the real mp3 links
wget -i links.txt

# Grep out for the real mp3 links from the mp3 pages
grep --color "audio1" *mp3 | cut -d '"' -f4 > mp3links.txt
# Get rid of the mp3 html pages
rm -f *.mp3

# Download all the links
wget -i mp3links.txt

# Cleanup
rm -r *.txt
