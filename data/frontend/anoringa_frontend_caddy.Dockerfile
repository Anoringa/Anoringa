# stage 1 download the project
FROM alpine/git as downloader
WORKDIR /download
# clone repo into the container
RUN git clone https://github.com/Anoringa/anoringa-frontend --depth 1 .


# stage 2 build the project
FROM node:14.18.1-alpine3.11 as builder

WORKDIR /build
# RUN chmod 777 /usr/src/app
# USER node
# COPY --chown=node:node . /usr/src/app

# Copy the project
# COPY ./.env ./
COPY "./data/frontend/.env" ./
COPY --from=downloader /download/ ./

# Install the dependencies of the project
# RUN npm i -g npm-check-updates && npm-check-updates -u
# RUN npm install
# RUN npm ci --only=production
RUN npm install

# Build the project
RUN npm run build

# Copy the compiled files to another folder
# COPY . .

FROM caddy:2.4.6-alpine
ENV ENABLE_TELEMETRY="false"

COPY "./data/frontend/.caddy/Caddyfile" /etc/caddy/Caddyfile
# COPY ./Caddyfile /etc/caddy/Caddyfile

COPY --from=builder /build/dist /srv

EXPOSE 80
EXPOSE 443

# CMD /etc/caddy/start.sh