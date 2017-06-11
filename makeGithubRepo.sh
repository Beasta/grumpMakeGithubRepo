#!/bin/bash
echo "what is your github username?"
read githubUsername
echo "what should your repo be named?"
read repoName
theCurl="-u ${githubUsername} https://api.github.com/user/repos -d {\"name\":\"${repoName}\"}"
curl $theCurl
echo "add remote and push now (y/n)?"
read push
if [ ${push} = 'y' ]
  then
    origin="https://github.com/${githubUsername}/${repoName}"
    git remote add origin ${origin}
    git push --set-upstream origin master
fi
