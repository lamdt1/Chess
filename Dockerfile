# Use an official Node.js 14 image as a base
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json file to the working directory
COPY . . 

# Install the dependencies
RUN npm install

# Expose the port used by the application
EXPOSE 5000

# Run the command to start the application when the container launches
CMD ["node", "server.js"]