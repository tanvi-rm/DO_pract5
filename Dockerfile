# Use the official Node.js 18 image  
FROM node:18  
# Set the working directory  
WORKDIR /app  
# Copy package files and install dependencies  
COPY package*.json ./  
RUN npm install  
# Copy the rest of the app  
COPY . .  
# Expose the app port  
EXPOSE 3001
# Run the app  
CMD ["node", "index.js"] 
