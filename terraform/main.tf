# Providers instellen
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

provider "kubernetes" {
  host                   = digitalocean_kubernetes_cluster.my_cluster.endpoint
  token                  = digitalocean_kubernetes_cluster.my_cluster.kube_config[0].token
  cluster_ca_certificate = base64decode(digitalocean_kubernetes_cluster.my_cluster.kube_config[0].cluster_ca_certificate)
}


# Kubernetes-cluster aanmaken
resource "digitalocean_kubernetes_cluster" "my_cluster" {
  name    = "kuber-cluster2"
  region  = "ams3"
  version = "1.31.1-do.4"

  node_pool {
    name       = "node-pool-names"
    size       = "s-2vcpu-4gb"
    node_count = 3
  }
}


