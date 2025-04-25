# Step 1: Use Node base image
FROM node:20-alpine

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy package.json + package-lock.json
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy your source code
COPY . .

# Step 6: Build TypeScript
RUN npm run build

# Step 7: Tell Docker how to run the app
CMD ["node", "dist/start.js"]

# Optional: Expose the port (for documentation)
EXPOSE 3000
