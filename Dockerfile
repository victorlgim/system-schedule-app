FROM node:14

WORKDIR /usr/src/app

COPY prisma ./prisma

COPY package*.json ./

RUN npm ci --only=production

EXPOSE 3000

CMD ["node", "dist/main"]
