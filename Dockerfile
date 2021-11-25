FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

### mongodb container ###
# docker run -d --name mongodb mongo

### app container ###
# docker build -t favorites:latest .
# docker run --name favorites -d --rm -p 3000:3000 favorites:latest

# 'mongodb://host.docker.internal:27017/swfavorites' would connect to the localhost instance of an installed mongoDB
