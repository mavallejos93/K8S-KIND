# K8S-KIND


backend

docker build . -t tech-backend:v1.0

kind load docker-image tech-backend:v1.0  #subir image a kind


docker exec -it <image> sh    ->  crictl images #ver images dentro del worker


