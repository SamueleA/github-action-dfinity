FROM node:14.16.0-alpine

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH="/home/node/.npm-global/bin:$PATH"

USER node
RUN yes | sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)" | killall -9 yes

COPY entrypoint.sh /home/node/entrypoint.sh

USER root

RUN ["chmod", "+x", "/home/node/entrypoint.sh"]

ENTRYPOINT ["/home/node/entrypoint.sh"]