


source:
    https://medium.com/bb-tutorials-and-thoughts/how-to-serve-vue-js-application-with-nginx-and-docker-d8a872a02ea8

    https://stackoverflow.com/questions/62660588/how-to-access-cloned-git-repo-in-multi-stage-docker-build

    https://cli.vuejs.org/guide/deployment.html#docker-nginx

docker build --pull --no-cache --rm -f "./anoringa_frontend_caddy.Dockerfile" -t anoringa_frontend_caddy:latest "."

docker run -i -t -d -p 80:80 443:443 --name python_flask anoringa-frontend-caddy:latest

docker inspect --format '{{ .NetworkSettings.IPAddress }}' anoringa-frontend-caddy



docker build -t abc -f ./anoringa_frontend_caddy.Dockerfile .
