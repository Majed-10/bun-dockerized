# Use an official Node.js image as a parent image
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app


COPY package*.json ./


RUN npm install

# Copy the rest of the application code
COPY . .

# Build the application (if applicable)
RUN npm run build

# Expose the application on port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start"]