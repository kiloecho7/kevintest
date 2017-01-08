FROM quay.octanner.io/base/oct-node:6.9.1-oracledb

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN npm install

EXPOSE 9000

CMD [ "node", "bin/www.js" ]
