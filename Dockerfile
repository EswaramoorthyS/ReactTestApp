# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json to the container
COPY package*.json ./

# Install the app dependencies
RUN npm install

# Copy the entire app directory to the container
COPY . .

# Build the React app
RUN npm run build

# Expose a port for the application (adjust as needed)
EXPOSE 3000

# Define the command to start the application
CMD ["npm", "start"]
