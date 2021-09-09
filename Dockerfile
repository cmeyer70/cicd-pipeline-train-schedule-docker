FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN ls -lah /usr/src/app
RUN npm cache clean --force
RUN npm install --loglevel verbose --force
COPY . . 
EXPOSE 8080
CMD [ "npm", "start"]
