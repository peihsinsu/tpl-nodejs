From node

ADD app /app
WORKDIR /app

RUN npm install

CMD ["node","index.js"]
