FROM node:20-alpine AS builder
WORKDIR /ui
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build      # /ui/dist ortaya çıkar

FROM nginx:alpine
COPY --from=builder /ui/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]