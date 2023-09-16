#build aplikasi
docker build -t item-app:v1 .

#melihat daftar image di lokal
docker images

#merubah nama image
docker tag item-app:v1 ghcr.io/firmanputra908/item-app:v1

#masuk ke github via terminal menggunakan personal access token
docker login ghcr.io -u firmanputra908 -p $PAT_GITHUB_PACKAGES 

#melukan upload image ke github packages
docker push ghcr.io/firmanputra908/item-app:v1
