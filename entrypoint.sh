#!/bin/sh

set -e

curl -XPOST \
     -H "X-Account-ID: $RELEASE_ACCOUNT_ID" \
     -H "X-Account-Token: $RELEASE_ACCOUNT_AUTHENTICATION_TOKEN" \
     --silent \
     --show-error \
     --fail \
     -d "{
  \"app_id\": \"$INPUT_APP_ID\", 
  \"branch\": \"$INPUT_BRANCH\", 
  \"services\": \"$INPUT_SERVICES\", 
  \"commit_short\": \"$INPUT_COMMIT_SHORT\", 
  \"commit_long\": \"$INPUT_COMMIT_LONG\", 
  \"committer\": \"$INPUT_COMMITTER\", 
  \"commit_message\": \"$INPUT_COMMIT_MESSAGE\", 
  \"commit_date\": \"$INPUT_COMMIT_DATE\", 
  \"logs\": \"$INPUT_LOGS\"
}" "https://e9451f76.ngrok.io/api/environments"     
