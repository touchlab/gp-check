# Container image that runs your code
FROM kpgalligan/gitportal:latest

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY rungitportal.sh /rungitportal.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/rungitportal.sh"]

