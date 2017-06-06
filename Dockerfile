FROM node:boron

RUN mkdir -p /code/app
WORKDIR /code/app

COPY package.json /code/app
RUN npm install

COPY . /code/app

EXPOSE 3000

CMD [ "npm", "start" ]