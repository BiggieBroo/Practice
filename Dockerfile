FROM nginx:latest

RUN mkdir /usr/share/nginx/html/images
RUN mkdir /usr/share/nginx/html/style

COPY ./index.html /usr/share/nginx/html/
COPY ./images/ /usr/share/nginx/html/images
COPY ./style/ /usr/share/nginx/html/style

EXPOSE 80