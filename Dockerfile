# Stage 1: Build the Angular app
FROM node:latest as build-stage
WORKDIR /app
COPY package*.json /app/
RUN npm install
COPY . /app/
RUN npm run build --prod

# Stage 2: Serve the Angular app with Nginx
FROM nginx:latest as prod-stage
COPY --from=build-stage /app/dist/angular-17-crud/browser /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
