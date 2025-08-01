FROM node:latest

# Set working directory
WORKDIR /home/ubuntu/dockernode

# Copy dependencies and source code
COPY package.json ./
COPY index.js ./

# Install dependencies
RUN npm install

# Install PM2 globally
RUN npm install -g pm2

# Start the app with PM2
CMD ["pm2-runtime", "index.js"]
