FROM keymetrics/pm2:latest-alpine

WORKDIR /home/node

# Bundle APP files
COPY src src/
COPY package.json .
COPY tsconfig.json .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN mkdir /opt/html ; ln -sf /opt/html/.env .env ; pwd
RUN npm install
RUN npm run build

USER node
expose 8080

CMD [ "npm", "run", "start" ]

