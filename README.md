# K8S-KIND


backend

docker build . -t tech-backend:v1.0

kind load docker-image tech-backend:v1.0  #subir image a kind


docker exec -it <image> sh    ->  crictl images #ver images dentro del worker


INGRESS <https://kind.sigs.k8s.io/docs/user/ingress/#using-ingress> nginx

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

