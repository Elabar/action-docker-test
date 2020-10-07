FROM node:10.14.1-alpine

RUN mkdir /srv/github-actions-app
WORKDIR /srv/github-actions-app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

RUN npm run test