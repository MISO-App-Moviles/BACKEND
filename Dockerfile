FROM node:12-alpine
WORKDIR /usr/src/app​
COPY package.json .
COPY . .
RUN npm install --quiet
ENTRYPOINT [ "sh", "./docker/entrypoint.sh" ]