FROM nginx:latest

RUN mkdir /usr/share/nginx/html/images
RUN mkdir /usr/share/nginx/html/style

COPY ./index /usr/share/nginx/html/
COPY ./style/ /usr/share/nginx/html/style
COPY ./images/ /usr/share/nginx/html/images

EXPOSE 80