FROM alpine:latest
LABEL "com.github.actions.name"="Github Release"
LABEL "com.github.actions.description"="Publish Github releases in an action"
LABEL "com.github.actions.icon"="git-branch"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/smarkup/Github-Release-Action"
LABEL "maintainer"="Stefan Luptak"

COPY install.sh install.sh
RUN ./install.sh

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
