#!/bin/sh

set -e

curl -X POST "https://e9451f76.ngrok.io/api/environments" \
     -H "X-Account-ID: $RELEASE_ACCOUNT_ID" \
     -H "X-Account-Token: $RELEASE_ACCOUNT_AUTHENTICATION_TOKEN" \
     --silent \
     --show-error \
     --fail \
     --form "app_id=$INPUT_APP_ID" \
     --form "branch=$INPUT_BRANCH" \
     --form "services=$INPUT_SERVICES" \
     --form "commit_short=$INPUT_COMMIT_SHORT" \
     --form "commit_long=$INPUT_COMMIT_LONG" \
     --form "committer=$INPUT_COMMITTER" \
     --form "commit_message=$INPUT_COMMIT_MESSAGE" \
     --form "commit_date=$INPUT_COMMIT_DATE" \
     --form "logs=$INPUT_LOGS"
     