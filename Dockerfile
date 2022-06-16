#Docker base image 
FROM node:14

#mention the working directory inside docker image
WORKDIR /usr/src/app

#requirements to execute the app
COPY package.json .
RUN npm install 
COPY . .

#port on which app will run
EXPOSE 3000

#command to run app
CMD ["node", "index.js"]
