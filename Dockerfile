FROM node:22.9.0
WORKDIR /app
COPY package.json ./
COPY package-lock.json ./
RUN npm install -g npm@11.2.0
COPY . .
EXPOSE 3000
ENV HOST=0.0.0.0
CMD ["npm", "start"]