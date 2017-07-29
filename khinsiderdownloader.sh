#!/bin/bash

wget https://downloads.khinsider.com/game-soundtracks/album/ryu-ga-gotoku-zero-yakuza-0-ost-a-and-b-sides-
grep --color "https://downloads.khinsider.com/game-soundtracks/album/ryu-ga-gotoku-zero-yakuza-0-ost-a-and-b-sides-" * | cut -d '"' -f2 | uniq > links.txt
wget -i links.txt
grep --color "audio1" *mp3 | cut -d '"' -f4 > mp3links.txt
rm -f *.mp3
wget -i mp3links.txt
rm -r *.txt
