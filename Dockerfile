
# Build: docker build -t nosisky/node .

# Option 1
# Start MongoDB and Node (link Node to MongoDB container with legacy linking)
 
# docker run -d --name my-mongodb mongo
# docker run -d -p 3000:3000 --link my-mongodb:mongodb --name nodeapp nosisky/node

# Option 2: Create a custom bridge network and add containers into it

# docker network create --driver bridge isolated_network
# docker run -d --net=isolated_network --name mongodb mongo
# docker run -d --net=isolated_network --name nodeapp -p 3000:3000 nosisky/node


FROM node:latest

MAINTAINER Abdulrasaq Nasirudeen

ENV NODE_ENV=development
ENV PORT=3000

COPY . /var/www
WORKDIR /var/www

RUN npm i

EXPOSE $PORT

ENTRYPOINT ["npm", "start"]
