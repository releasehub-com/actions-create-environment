#!/bin/sh

echo "Arg 1 app_id: $1"
echo "Arg 2 branch: $2"
echo "Arg 3 services: $3"
echo "Arg 4 commit_short: $4"
echo "Arg 5 commit_long: $5"
echo "Arg 6 committer: $6"
echo "Arg 7 commit_message: $7"
echo "Arg 8 commit_date: $8"
echo "Arg 9 logs: $9"

echo "======================================="
echo "List All Environment Variables:"
printenv
echo "======================================="

set -e

#sh -c "curl --silent --show-error --fail -X POST https://releaseapp.io/api/environments $*"