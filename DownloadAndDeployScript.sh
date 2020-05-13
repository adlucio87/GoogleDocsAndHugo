#!/bin/bash
#ln -s /home/yourname/works/luciosoftsite/blog/ ~/luciosoftsite
#ln -s /home/yourname/works/luciosoftsite/blog/content/ ~/luciosoftblogcontent
#requirements wget|unzip|hugo|firebase
folderid=”your google doc folder id”
scriptid=”your google script id”
cd ~/luciosoftblogcontent;
retriveurl="https://script.google.com/macros/s/$scriptid/exec?folderid=$folderid”;
downlodUrl=$(wget $retriveurl -q -O -);
fileName="download.zip";
wget -c $downlodUrl -O $fileName;
unzip -o $fileName;
rm -f $fileName;
cd ~/luciosoftblog;
#hugo serve -D
HUGO_ENV="production" hugo --config config.yaml
firebase deploy
