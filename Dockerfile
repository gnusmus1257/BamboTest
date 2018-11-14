# Create image based on the official Node 6 image from dockerhub
FROM node:8.11.3

# Create a directory where our app will be placed
RUN mkdir /dashboardclient-ux

# Change directory so that our commands run inside this new directory
WORKDIR /dashboardclient-ux

# Get all the code needed to run the app
COPY . /dashboardclient-ux

# Install dependecies
RUN npm install

# Run unit tests
RUN npm run ng test

# Expose the port the app runs in
EXPOSE 5006

# Serve the app
CMD ["npm", "start"]