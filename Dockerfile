FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY server.js .
COPY users.json .
EXPOSE 8080
CMD ["node", "server.js"]