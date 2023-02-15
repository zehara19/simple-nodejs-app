# it is the base url pulling the image form the docker repo
FROM node:14

# Setting the working directory in the container to /app
WORKDIR /app

# Copying the package.json and package-lock.json files into the container
COPY package*.json ./

# Install the dependencies defined in the package.json file
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Exposing the port number 3000 to the host
EXPOSE 3000

# Start the application with the `npm start` command
CMD [ "npm", "start" ]

# Build the application with the `npm build` command
RUN npm run build

# Stop the application with the `npm stop` command
#CMD [ "npm", "stop" ] 
