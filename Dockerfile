FROM node:8

ADD ./package.json /app/package.json

WORKDIR /app

RUN npm install --production

ADD ./ /app

CMD [ "node", "dist/index.js" ]
