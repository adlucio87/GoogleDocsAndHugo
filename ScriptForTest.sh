
#!/bin/bash
#ln -s /home/yourname/works/luciosoftsite/blog/ ~/luciosoftsite
#ln -s /home/yourname/works/luciosoftsite/blog/content/ ~/luciosoftblogcontent
#wget|unzip|hugo|firebase
folderid="yourgoogledocsfolderid"
scriptid="yourGoogleAppScriptid";
cd ~/luciosoftblogcontent;
retriveurl="https://script.google.com/macros/s/$scriptid/exec?folderid=$folderid";
downlodUrl=$(wget $retriveurl -q -O -);
fileName="download.zip";
wget -c $downlodUrl -O $fileName;
unzip -o $fileName;
rm -f $fileName;
cd ~/luciosoftblog;
xdg-open http://localhost:1354/
hugo serve -D -p 1354
