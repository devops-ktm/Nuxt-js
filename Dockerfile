# Step 1: Use Node 20 base image
FROM node:20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy full project and build
COPY . .
RUN npm run build

# Step 2: Use minimal image to serve
FROM node:20-alpine

WORKDIR /app

COPY --from=builder /app ./

# Expose port Nuxt runs on
EXPOSE 3000

# Start Nuxt app in production mode
CMD ["npm", "run", "preview"]
