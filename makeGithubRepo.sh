#!/bin/bash
echo "what is your github username?"
read githubUsername
echo "what should your repo be named?"
read repoName
curl -u ${githubUsername} https://api.github.com/user/repos -d '{"name":"${repoName}"}'

