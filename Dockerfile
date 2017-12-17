
# Get the latest node image from dockerhub
FROM node:latest

# Create a folder where we store application data
RUN mkdir -p /src/docker-node

MAINTAINER Abdulrasaq Nasirudeen

# Copy package.json file to the new directory
COPY package.json /src/docker-node

# Install dependencies
RUN npm install

# Set application port to 3000
ENV PORT=3000

# Copy all source code in working directory to the new directory
COPY . /src/docker-node

# Set application directory to the newly created directory
WORKDIR /src/docker-node

##Expose application to environment port
EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
