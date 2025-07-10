ARG NODE_VERSION=22

FROM node:${NODE_VERSION}-alpine

WORKDIR /app

COPY package*.json ./

RUN npm ci

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]