FROM node:alpine

WORKDIR /app


COPY package.json /app/package.json
COPY index.js /app/index.js

RUN npm install


CMD ["npm", "start"]
