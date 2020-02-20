FROM mhart/alpine-node:latest

# install git creating working directory
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    mkdir -p /usr/src/app

# copy files to working directory
COPY . /usr/src/app/

# change working directory
WORKDIR /usr/src/app

# install node dependencies
RUN npm install

# launch application
CMD ["npm","start"]
