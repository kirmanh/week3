# Use an official Node.js runtime as the base image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire application source code into the container
COPY . .

# Build the React application (you can adjust this for your build process)
RUN npm run build

# Expose the port your React app will run on
EXPOSE 3000

# Start the React application when the container starts
CMD ["npm", "start"]
