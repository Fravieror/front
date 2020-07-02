# Image oficial golang
FROM nginx:stable-perl
# create directory
RUN npm install
# Our project will now successfully build with the necessary go libraries included.
RUN npm run build
# Our start command which kicks off
# our newly created binary executable
COPY nginx.conf /etc/nginx/nginx.conf
COPY /dist /usr/share/nginx/html