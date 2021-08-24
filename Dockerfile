FROM nginx
COPY ./files/ /files
COPY ./nginx.conf /etc/nginx/nginx.conf
