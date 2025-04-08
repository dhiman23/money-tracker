FROM node:22.9.0

WORKDIR /app

# Use updated npm globally (optional but fine)
RUN npm install -g npm@11.2.0

# Copy package files and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Set environment and expose port
EXPOSE 3000
ENV HOST=0.0.0.0

# Start the app
CMD ["npm", "start"]
