FROM debian:stable-slim

RUN apt update
RUN apt -yq install rsync openssh-client


# Label
LABEL "com.github.actions.name"="Deploy with rsync"
LABEL "com.github.actions.description"="Deploy to a remote server using rsync over ssh"
LABEL "com.github.actions.color"="green"
LABEL "com.github.actions.icon"="truck"

LABEL "repository"="http://github.com/AEnterprise/rsync-deploy"
LABEL "homepage"="https://github.com/AEnterprise/rsync-deploy"
LABEL "maintainer"="AEnterprise <aenterprise@aenterprise.info>"


ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
