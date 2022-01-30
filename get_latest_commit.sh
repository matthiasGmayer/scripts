#!/bin/bash
#The arguments are the git repositories
#example usage: ./script username/repository

print_usage() {
	printf "Usage: ./script [-v] username/repo"
}

verbose=0
flags='v'
while getopts 'v' flag; do
  case "${flag}" in
    v) verbose=1;;
    *) print_usage
       exit 1 ;;
  esac
done
n=""
id=$(cat ~/programs/getlatestcommitid.txt)
secret=$(cat ~/programs/getlatestcommitkey.txt)
for var in "$@"
do
	v=$var
	if [ $v == '-v' ]
	then
		continue
	fi
	if [ $verbose -eq 1 ]
	then
		n=$var
	fi
	echo $n $(curl -s -u $id:$secret https://api.github.com/repos/$v/commits/master |jq|grep date|head -n 1|cut -d'"' -f4|cut -d'-' --fields='1 2')
done
