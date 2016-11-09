#FROM node:0.12.7
#FROM node:4.3.2
FROM node:6.9.1

# make the src folder available in the docker image
ADD . /src
WORKDIR /src

#install firefox for Functional tests
#RUN apt-get install -y xvfb firefox-esr \

# install the dependencies from the package.json file
RUN npm install

# make port 80 available outside of the image
EXPOSE 3030

# start node with the index.js file of our hello-world application
CMD ["node", "./src/server.js"]