# Use an official Node.js runtime as a parent image
FROM node:14-alpine as build

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the current directory contents into the container at /app
COPY . .

# Build the app for production with minification
RUN npm run build

# Use a smaller base image for the production container
FROM nginx:stable-alpine

# Copy the built app from the previous container to the new container
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground when the container starts
CMD ["nginx", "-g", "daemon off;"]