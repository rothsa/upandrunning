# start from a node.js 10 (LTS) image
FROM node:10

# specify the directory inside the image in which all commands will run
WORKDIR /usr/src/app

# copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all of the app files into the image
COPY . .

# The default command to run when starting the container
CMD [ "npm", "start"]
