# specify the node base image with your desired version node:<version>
FROM node:18
# replace this with your application's default port
# Create app directory
WORKDIR /usr/app


Run npm install webpack
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install

COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]