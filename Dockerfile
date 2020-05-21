FROM alpine

LABEL "com.github.actions.name"="Create Release Staging Environment"
LABEL "com.github.actions.description"="Create Release Staging Environments with Github Actions"
LABEL "com.github.actions.icon"=""
LABEL "com.github.actions.color"=""

LABEL "repository"="http://github.com/releaseapp-io/actions-create-environment"
LABEL "homepage"="http://releaseapp.io"
LABEL "maintainer"="Jeremy Kreutzbender <support@releaseapp.io>"

RUN apk add --no-cache curl ca-certificates

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
