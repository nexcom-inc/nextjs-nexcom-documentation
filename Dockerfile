FROM node:18-alpine

WORKDIR /app/nexcom

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

RUN npm run build

CMD ["npm", "run", "start"]