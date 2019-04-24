# base image
FROM node:carbon

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
# ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
# RUN npm install react-scripts@1.1.1 -g --silent

# start app
CMD ["npm", "start"]
