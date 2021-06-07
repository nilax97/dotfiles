find . -name ".DS_Store" -delete
 git add --all
 git commit -m ${1:-"updates"}
 git push -u origin master
