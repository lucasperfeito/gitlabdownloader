# Gitlab Downloader
A simple bash script to clone all projects of a GitLab server through GitLab REST API.

## Requirements
You need **jq** to run this script (https://stedolan.github.io/jq/).
OS X : ```brew install jq```<br /> 
Debian / Ubuntu : ```apt-get install jq```<br /> 
Fedora : ```dnf install jq```

Create a GitLab token : https://docs.gitlab.com/ee/user/profile/personal_access_tokens.html with following scope : **read_api** and **read_repository**.

You need to edit lines 7 and 8 to set your GitLab sever URL and Acess Token.

## Run the script
```
sh check.sh
```
or
```
./check.sh
```
