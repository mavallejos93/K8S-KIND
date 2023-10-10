############################## create images docker ##############################
docker build . -t tech-backend:v1.0 

docker build . -t tech-frontend:v1.0 

Docker image ls 

############################## up docker image in KIND ##############################

kind load docker-image tech-backend:v1.0 

############################## install datadog with helm ##############################
helm repo add datadog https://helm.datadoghq.com

helm install datadogtest -f datadog-values.yaml \
    --set datadog.site='us5.datadoghq.com' \
    --set datadog.apiKey='4eb6dfdc49ff926ebec6d3deec9e9202' \
    --set clusterAgent.replicas='2' \
    --set clusterAgent.createPodDisruptionBudget=true \
    datadog/datadog

helm upgrade datadogtest -f datadog-values.yaml \
    --set datadog.site='us5.datadoghq.com' \
    --set datadog.apiKey='4eb6dfdc49ff926ebec6d3deec9e9202' \
    --set clusterAgent.replicas='2' \
    --set clusterAgent.createPodDisruptionBudget=true \
    datadog/datadog
