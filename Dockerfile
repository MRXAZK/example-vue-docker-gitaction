# Base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the app's files to the container
COPY . .

# Expose the app's port
EXPOSE 8080

# Start the app
CMD ["npm", "run", "serve"]
