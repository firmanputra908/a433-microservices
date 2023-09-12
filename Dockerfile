from node:12-alpine
run apk add --no-cache python2 g++ make
workdir /app
copy . .
run yarn install --production
cmd ["node","src/index.js"]
expose 3000