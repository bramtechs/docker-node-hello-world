# Stage 1: Build the application
FROM node:18-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

# Stage 2: Create the production image
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/dist .
COPY start.sh .
EXPOSE 3000
CMD ["./start.sh"]
