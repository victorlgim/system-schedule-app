FROM node:14

WORKDIR /usr/src/app

COPY prisma ./prisma

COPY package*.json ./

RUN npm ci --only=production

COPY . .

RUN npm run build

EXPOSE 3000

CMD ["node", "dist/main"]
