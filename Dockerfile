FROM node:22-alpine

WORKDIR /app

# Copy dependency files first for better caching
COPY package.json package-lock.json ./

RUN npm install

# Copy the rest of the application code
COPY . .

EXPOSE 5173

# Correct CMD syntax (space after CMD)
CMD ["npm", "run", "dev"]
