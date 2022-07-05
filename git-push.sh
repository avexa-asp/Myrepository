#!/bin/sh
# Shell Script to add all files, commit them with a commit message and then push them to remote GitHub repo
echo "*** Automating Git Add, Commit and Push ***"
username=avexa-asp
token=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
repoName=Myrepository
commitMessage=`date +'%Y-%m-%d %H:%M:%S %Z'`
git status
git remote set-url origin https://${token}@github.com/${username}/${repoName}.git
# If there are any uncommited and unstatged files, ask user to commit them
if [ "$(git status --porcelain)" ]; then
   echo "There are uncommited and unstatged files. Commit them before pushing"
   echo "commiting the ustaged file as $commitMessage..."
   git add .
   git commit -m "$commitMessage"
   git push
   echo "Files pushed to GitHub"
# else push all commited and staged files to remote repo
else
   git push
   echo "Files pushed to GitHub"
   fi
   #Echo message if there is no files to commit, stage or push
   if [ "$(git status --porcelain)" ]; then
      echo "There are no files to commit, stage or push"
   fi
# End of script
