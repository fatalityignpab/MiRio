FROM node:11

LABEL version="1.0"
LABEL description="MiRio"
LABEL maintainer="Ronald Cardona - rcardo11@eafit.edu.co"

ARG PORT=3000
ENV PORT $PORT

WORKDIR /project1GPS

COPY package*.json ./

RUN npm install 

COPY . ./

EXPOSE 3000
CMD npm start