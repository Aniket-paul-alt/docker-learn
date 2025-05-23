# 1. Base image
FROM node:20-alpine3

# 2. Set working directory
WORKDIR /app

# 3. Copy files
COPY package.json .
COPY package-lock.json .

# 4. Install dependencies
RUN npm install

# 5. Copy the rest of the application code
COPY . .

#start the application
CMD ["npm", "start"]