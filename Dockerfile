FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]

### network ###
# docker network create favorites-net

### mongodb container ###
# docker run -d --name mongodb --network favorites-net mongo

### app container ###
# docker build -t favorites:latest .
# docker run --name favorites --network favorites-net -d --rm -p 3000:3000 favorites:latest

# 'mongodb://host.docker.internal:27017/swfavorites' would connect to the localhost instance of an installed mongoDB
