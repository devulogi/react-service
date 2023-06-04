# Stage 1: Build the React app
FROM node:18-alpine as build

WORKDIR /app

# Copy package.json and package-lock.json to work directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Build the React app
CMD ["npm", "run", "start"]
