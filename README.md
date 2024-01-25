
### Creating React App
To create a development environment using create react app, use the following commands in ubuntu shell :

npx create-react-app my-app 
cd my-app
npm start

"my-app" is the name that you want to give to your dev environment. the npm start command will launch the file in the browser.

### Creating an image for running container
In the terminal, move to the project directory that you created with react app and run the following command to build an image:

sudo docker build -t image_name .

"image_name" is the name that you want to give to the image. In this project, the image name is malhi_robinpreetkaur_coding_assignment11.

### Running the container
Before running the container, make sure that you expose the port 3000 in the dockerfile so that it is available.
In the Dockerfile, include the following code:

EXPOSE 3000

Now to run the docker container, run the following command in ubuntu shell while you are in the project directory:

sudo docker run -p 7775:3000 name

"name" is the name of the container. In this project, it is "malhi_robinpreetkaur_coding_assignment11"

the -p flag helps to map the port 7775 on the host machine to the port 3000 of the docker conatainer.

### Running the web application
You can access the web application by navigating to localhost:7775 in the browser. It would display the contents in the app.js, i.e., Codin 1

### Dockerfile
The dockerfile contains the following code:

FROM node:21.6.0-alpine
--this pulls the base image from Node.js with version 21.6.0, and alpine is a linux based variant that is lightweight and keeps the size of the image small

WORKDIR /malhi_robinpreetkaur_site
--this sets the working directory inside the docker container to malhi_robinpreetkaur_site. This means that it is the main directory and all the commands are executed in this directory.

ENV PATH /malhi_robinpreetkaur_site/node_modules/.bin:$PATH
--this adds "/malhi_robinpreetkaur_site/node_modules/.bin" to the environment path variable. Including the "node_modules/.bin" directory in the PATH makes sure that all the executable files installed by npm dependencies are easily accessible and we don't need to specify their full paths.

COPY package.json ./
COPY package-lock.json ./
--this copies the files "package.json" and "package-lock.json" from the localhost to the working directory of the docker container.

RUN npm install
--this installs all the dependencies that are present in package.json.

RUN npm install react-scripts@3.4.1 -g
--this installs the react-script package with version 3.4.1

COPY . ./
--this copies all the directories from the current directory of the localhost to the working directory in the docker container.

EXPOSE 3000
--this exposes the port 3000 of the container so that it can be accessed externally.

CMD ["npm", "start"]
--this runs the "npm start" command that runs the react app.
