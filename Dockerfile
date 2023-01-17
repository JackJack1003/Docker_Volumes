FROM node:14

WORKDIR /app

ARG DEFAULT_PORT=80

COPY package.json /app

RUN npm install

COPY . /app/

#RUN npm install
VOLUME [ "/app/node_modules" ]

ENV PORT $DEFAULT_PORT

EXPOSE $PORT


CMD ["node", "server.js"]