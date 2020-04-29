FROM node:alpine

COPY . /redis-desktop
WORKDIR /redis-desktop

ENV NODE_ENV=production

RUN npm install

EXPOSE 9988
RUN npm start

CMD [ "npm","run","electron" ]

