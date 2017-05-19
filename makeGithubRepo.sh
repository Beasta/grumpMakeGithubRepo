#!/bin/bash
echo "what is your github username?"
read githubUsername
echo "what should your repo be named?"
read repoName
theName='{"name":"'
theName+=${repoName}
theName+='"}'
theCurl="-u ${githubUsername} https://api.github.com/user/repos -d "
theCurl+=$theName
curl $theCurl
