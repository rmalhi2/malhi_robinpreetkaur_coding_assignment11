
### Creating React App
To create a development environment using create react app, use the following commands in ubuntu shell :

npx create-react-app my-app 
cd my-app
npm start

"my-app" is the name that you want to give to your dev environment. the npm start command will launch the file in the browser.

### Creating an image for running container
In the terminal, move to the project directory that you created with react app and run the following command to build an image:

sudo docker build -t image_name

"image_name" is the name that you want to give to the image. In this project, the image name is malhi_robinpreetkaur_coding_assignment11.

### Running the conatiner
Before running the conatiner, make sure that you expose the port 3000 in the dockerfile so that it is available.
In the Dockerfile, include the following code:

EXPOSE 3000

Now to run the docker container, run the following command in ubuntu shell while you are in the project directory:

sudo docker run -p 7775:3000 name

"name" is the name of the container. In this project, it is "malhi_robinpreetkaur_coding_assignment11"

the -p switch helps to map the port 7775 on the host machine to the port 3000 of the docker conatainer.

### Running the web application
You can access the web application by navigating to localhost:7775 in the browser. It would display the contents in the app.js, i.e., Codin 1

