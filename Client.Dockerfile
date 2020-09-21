FROM alpine:latest

LABEL maintain = "ndiklas<nicholas.v.ndiki@gmail.com"

COPY client /client
WORKDIR /client
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 3000
CMD [ "serve", "-s", "build", "-l", "3000" ]