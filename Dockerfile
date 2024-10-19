# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application's code
COPY . .

# Expose the port the app runs on (change if needed)
EXPOSE 3000

# Define the command to start your application
CMD ["npm", "start"]

