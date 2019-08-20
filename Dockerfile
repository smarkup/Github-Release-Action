FROM alpine:edge
LABEL "com.github.actions.name"="Github Release"
LABEL "com.github.actions.description"="Publish Github releases in an action"
LABEL "com.github.actions.icon"="git-branch"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/smarkup/Github-Release-Action"
LABEL "maintainer"="Stefan Luptak"

RUN apk --no-cache --update add hub && \
  update-ca-certificates --fresh && \
  rm -rf /var/cache/apk/*

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
