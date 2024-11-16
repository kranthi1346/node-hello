# Use an official image as a base
FROM node:14

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application files
COPY . .

# Expose the port that your app will run on
EXPOSE 3000

# Define the start command
CMD ["npm", "start"]
```
