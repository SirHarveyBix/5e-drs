FROM node:15 
#les versions supperieur de node ne sont pas encore compatible 
WORKDIR /app

COPY package.json /app/

RUN apt-get update
RUN apt-get install python -y
RUN yarn install

COPY . /app/

EXPOSE 8080

CMD [ "yarn", "dev" ]