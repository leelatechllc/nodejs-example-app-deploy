FROM --platform=amd64 node:20 as build-deps
WORKDIR /app
ADD . . 
RUN yarn install && build

FROM --platform=amd64  nginx:1.25-alpine
COPY --from=build-deps /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]