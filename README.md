# GoogleDocsAndHugo
How to create a Blog with Hugo e Google Docs as BackEnd

The google script converts all the documents listed in a Google sheet, organizes into folders by categories, extracts images from articles, adds the MarkDown header, tags and finally creates a zip file containing all the contents. I decided to make the zip public and therefore downloadable, ready for deployment. 

# Usage: 
  Create a google sheet as my google sheet: 
    - Tools > Edit Script > New
    - Select "Blank Project", then paste this code in and save.
    -add resource -  advance google service - Drive & sheet
    -change paramether with yours google docs id
  Running the script:
    - on the gogol sheet button add processDocsInFolder as script to call
    - Click Run button.
    - Converted url to zip will be mailed to you. Subject will be "[MARKDOWN_MAKER]...".

link to full blog explains

Thanks to
[mangini/gdocs2md: Convert a Google Drive Document to the Markdown format, suitable for publishing.](https://github.com/mangini/gdocs2md) 
