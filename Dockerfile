FROM node:12

WORKDIR /opt/app

COPY package.json package-lock.json* ./

RUN npm cache clean --force && npm install

COPY . /opt/app

RUN rm -f .env

ENV PORT 80
EXPOSE 80

ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "npm", "run", "start" ]
