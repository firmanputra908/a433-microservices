#node:14 sebagai image
from node:14 

#direktori dimana semua pekerjaan dilakukan di sini
workdir /app

#menyalin semua file di folder saat ini ke direktori /app
copy . .

#menentukan aplikasi agar berjalan di mode production, dan
#menggunakan container item-db sebagai database 
env NODE_ENV=production DB_HOST=item-db

#install dependensi untuk production dan build app
run npm install --production --unsafe-perm && npm run build

#ekspos port yang digunakan aplikasi adalah 8080
expose 8080

#running server dengan perintah npm start
cmd ["npm","start"]