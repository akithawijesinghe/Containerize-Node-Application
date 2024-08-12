#GET THE BASE IMAGE
FROM node:20-alpine

#set the working directry
WORKDIR /app

#COPY THE PACKAGE.JSON  FILE
COPY package*.json ./
 
#INSTALL THE DEPENDANCES
RUN npm install 

#COPY THE SOURCE CODE
COPY . .

#EXPOSE THE PORT
EXPOSE 5000

#START THE APPLICATION
CMD ["npm" , "start"]