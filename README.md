# khinsider_downloader
A quick script to download albums from: https://downloads.khinsider.com


The reason I made this script was because this website has an album page, the album page has mp3 webpages that have a link to the mp3. Hence the script works as so:

1. Download the album webpage 
2. Grep out each of the mp3 page URL into a file
3. From the file, download each of the mp3 pages
4. From each mp3 page, grep each of their respective mp3 links into another file
5. wget all the URLs
