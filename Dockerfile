# this base image from docker hub 
FROM nginx:alpine

# cd into the /usr/share/nginx/html directory
WORKDIR /usr/share/nginx/html/

# copy files project to /html
COPY . .

EXPOSE 80
