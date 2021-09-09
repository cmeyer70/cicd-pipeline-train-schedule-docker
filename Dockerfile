FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN rm -rf node_modules package-lock.json 
RUN npm install --loglevel verbose
COPY . . 
EXPOSE 8080
CMD [ "npm", "start"]
