# en théorie ça marche mais NPM c'est trop long (+ 400s)

# FROM node:22-alpine as front_builder

# WORKDIR /app

# COPY . .

# RUN npm install -y

# RUN npm run build

FROM nginx:1.27-alpine

COPY dist/ /usr/share/nginx/html

COPY nginx/ /etc/nginx/

COPY entrypoint.sh /docker-entrypoint.d/entrypoint.sh
