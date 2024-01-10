FROM --platform=amd64 nginx:alpine 
WORKDIR /usr/share/nginx/html
ADD . .
