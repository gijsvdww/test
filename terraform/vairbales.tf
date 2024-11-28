# variables

# DigitalOcean API token
variable "do_token" {
  description = "DigitalOcean API token"
  type        = string
  sensitive   = true
}


#
# # Clusternaam voor Kubernetes
# variable "cluster_name" {
#   description = "Naam van het Kubernetes-cluster"
#   type        = string
# }
#
# # Regio-instelling voor het cluster en de database
# variable "region" {
#   description = "Regio waar het cluster en de database worden aangemaakt"
#   type        = string
# }
#
# # Node-aantal voor het Kubernetes-cluster
# variable "node_count" {
#   description = "Aantal nodes in het Kubernetes-cluster"
#   type        = number
# }
#
# variable "namespace" {
#   description = "Namespace voor de applicatie en database"
#   type        = string
# }
#
# variable "docker_server" {
#   description = "Docker registry server URL"
#   type        = string
#   default     = "registry.digitalocean.com"
# }
#
# variable "docker_username" {
#   description = "Docker registry username"
#   type        = string
# }
#
# variable "docker_email" {
#   description = "Docker registry email"
#   type        = string
# }
