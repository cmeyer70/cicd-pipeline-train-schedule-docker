FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm cache clean --force
RUN npm install --loglevel verbose
COPY . . 
EXPOSE 8080
CMD [ "npm", "start"]
