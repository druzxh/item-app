FROM node:14-alpine

RUN apk add --no-cache python3 g++ make

WORKDIR /app

COPY . .

ENV NODE_ENV=production
ENV DB_HOST=item-db

RUN npm install --production --unsafe-perm && npm run build

EXPOSE 8080

CMD ["node", "app.js"]
