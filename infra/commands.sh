helm repo add datadog https://helm.datadoghq.com

helm install datadog-values.yaml datadogtest datadog/datadog \
  --set datadog.site='datadoghq.com' \
  --set datadog.apiKey='2df52e2c0aa3cfe8f77a37e2a98eb8ad' \
  --set clusterAgent.replicas='2' \
  --set clusterAgent.createPodDisruptionBudget=true


helm upgrade datadogtest -f datadog-values.yaml \
    --set datadog.site='us5.datadoghq.com' \
    --set datadog.apiKey='4eb6dfdc49ff926ebec6d3deec9e9202' \
    --set clusterAgent.replicas='2' \
    --set clusterAgent.createPodDisruptionBudget=true \
    datadog/datadog
