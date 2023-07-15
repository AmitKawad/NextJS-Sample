# Use an official Node.js runtime as the base image
FROM node:16.3.0-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app's source code
COPY . .


# Expose the desired port (optional)
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run", "dev"]
