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

set -e

curl -H "X-Account-ID: $RELEASE_ACCOUNT_ID" \
     -H "X-Account-Token: $RELEASE_ACCOUNT_AUTHENTICATION_TOKEN" \
     --silent \
     --show-error \
     --fail \
     -d "{'app_id':$1, 'branch':$2, 'services': $3, 'commit_short': $4, 'commit_long': $5, 'commiter': $6, 'commit_message': $7, 'commit_date': $8, 'logs': $9" \
     -X POST https://e9451f76.ngrok.io/api/environments
