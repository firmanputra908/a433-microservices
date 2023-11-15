docker build -t ghcr.io/firmanputra908/karsajobs-ui:latest .
docker login ghcr.io -u firmanputra908 -p $PAT_GITHUB_PACKAGES
docker push ghcr.io/firmanputra908/karsajobs-ui:latest
