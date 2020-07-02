# Image oficial golang
FROM nginx:stable-perl
# Our start command which kicks off
# our newly created binary executable
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist /usr/share/nginx/html
