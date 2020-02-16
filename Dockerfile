FROM node:alpine as node
WORKDIR /app
COPY . .
RUN npm install 
RUN npm run build --prod


FROM nginx:latest
COPY --from=node    /app/dist/demo-app /usr/share/nginx/html
