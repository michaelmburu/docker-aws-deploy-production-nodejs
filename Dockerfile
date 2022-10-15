FROM node:14-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

CMD ["node", "app.js"]


#build on Mac ARM: docker buildx build --platform=linux/amd64 -t node-example .
#rename for docker hub- docker tag node-example <dockerrepository>
#docker login
#docker push <dockerrepository>