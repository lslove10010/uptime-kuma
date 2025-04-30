// This is a Node.js script to output the Dockerfile content
// The actual Dockerfile will be displayed in the output

const dockerfile = `FROM node:18-alpine

# Install dependencies required for building
RUN apk add --no-cache git python3 make g++

# Create app directory
WORKDIR /app

# Clone uptime-kuma repository
RUN git clone https://github.com/louislam/uptime-kuma.git .

# Install dependencies and build
RUN npm ci
RUN npm run build

# Expose port 3001
EXPOSE 3001

# Create volume for data persistence
VOLUME /app/data

# Set user to 10001 as requested
USER 10001

# Command to run the application
CMD ["node", "server/server.js"]`;

console.log(dockerfile);
