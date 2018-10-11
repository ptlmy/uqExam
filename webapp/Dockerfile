FROM node:8
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 9000
# RUN npm run build-client
CMD [ "npm", "start" ]