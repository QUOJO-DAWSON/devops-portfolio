# Use official Node.js base image
FROM node:20

# Set the working directory
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
