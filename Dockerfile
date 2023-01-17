FROM node:14

WORKDIR /app



COPY package.json /app

RUN npm install

COPY . /app/

#RUN npm install
VOLUME [ "/app/node_modules" ]

ENV PORT=80

EXPOSE $PORT


CMD ["node", "server.js"]