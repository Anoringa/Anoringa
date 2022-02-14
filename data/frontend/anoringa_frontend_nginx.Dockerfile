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


FROM nginx:alpine as production-build

COPY "./data/frontend/.nginx/nginx.conf" /etc/nginx/nginx.conf

# COPY ./.nginx/nginx.conf /etc/nginx/nginx.conf

## Remove default nginx index page
RUN rm -rf /usr/share/nginx/html/*

# Copy from the stahg 1
COPY --from=builder /build/dist /usr/share/nginx/html

EXPOSE 80
EXPOSE 443
ENTRYPOINT ["nginx", "-g", "daemon off;"]