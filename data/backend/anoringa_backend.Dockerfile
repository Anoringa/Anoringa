# stage 1 download the project
FROM alpine/git as downloader
WORKDIR /download
# clone repo into the container
RUN git clone https://github.com/Anoringa/anoringa-backend  --depth 1 .



# stage 2 build the project
FROM node:14.18.1-alpine3.11 as builder

WORKDIR /build
# RUN chmod 777 /usr/src/app
# USER node
# COPY --chown=node:node . /usr/src/app

# Copy the project
# COPY ./.env ./
COPY "./data/backend/.env" ./
COPY --from=downloader /download/ ./

# Install the dependencies of the project
RUN npm install


EXPOSE ${SERVER_PORT}

CMD [ "node", "app.js" ]