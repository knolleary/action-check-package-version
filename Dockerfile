FROM alpine:latest

LABEL "com.github.actions.name"="check-package-version"
LABEL "com.github.actions.description"="Updates package version references"
LABEL "com.github.actions.icon"="check-square"
LABEL "com.github.actions.color"="yellow"

RUN apk add --no-cache \
    jq \
    curl \
    git
COPY "run-action.sh" /usr/bin/run-action
CMD ["sh", "/usr/bin/run-action"]
