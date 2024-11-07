FROM node:20-alpine
WORKDIR /usr/src/app
COPY package*.json ./
COPY .npmrc ./
COPY production.env ./.env
RUN npm install
COPY . .
RUN npm run build
CMD ["node", ".output/server/index.mjs"]