FROM node:16

# uri of the mongo DB
ENV DB_URI=mongodb://mongoservice:27017

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

#Expose port and start application
EXPOSE 3000
CMD [ "npm", "run", "start" ]

ENTRYPOINT MONGO_URI=${DB_URI} node ./bin/www

