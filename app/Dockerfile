# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Create a new user and group named "test"
RUN addgroup -S nodeapp_user && adduser -S nodeapp_user -G nodeapp_user

# Copy files
COPY package*.json ./
COPY time.js db.json ./

# Install dependencies
RUN npm install

# Change ownership to the non-root user
RUN chown -R nodeapp_user:nodeapp_user /app

# Switch to non-root user
USER nodeapp_user

# Expose port
EXPOSE 3000

# Run the server
CMD ["npm", "start"]
