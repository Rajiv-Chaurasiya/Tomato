# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your application code to the working directory
COPY . .

# Build your Next.js application
RUN npm run build

# Expose the port Next.js is running on (usually 3000)
EXPOSE 3000

# Command to run your Next.js application
CMD ["npm", "start"]

