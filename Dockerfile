# builder
FROM node:20-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# runner
FROM node:20-alpine
WORKDIR /app
COPY --from=builder /app/dist/server.js ./
COPY --from=builder /app/package*.json ./
RUN npm install --production
EXPOSE 8080
CMD ["node", "server.js"]
