# pull official base image
FROM node:21.6.0-alpine

# set working directory
WORKDIR /malhi_robinpreetkaur_site

# add `/malhi_robinpreetkaur_site/node_modules/.bin` to $PATH
ENV PATH /malhi_robinpreetkaur_site/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install 
RUN npm install react-scripts@3.4.1 -g 

# add app
COPY . ./

# Expose port
EXPOSE 3000

# start app
CMD ["npm", "start"]