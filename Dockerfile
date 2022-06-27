FROM node:18-buster-slim

EXPOSE 3000

WORKDIR /app

COPY package.json ./
COPY yarn.lock ./

RUN yarn install

COPY . .

RUN yarn build

CMD ["yarn", "start"]