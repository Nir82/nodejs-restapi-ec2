variable "credentials" {
  default = "/home/nivan/Desktop/Projects/GCP/cycode-home-assignment-064d0740ee53.json"
}

variable "project_id" {
  default = "cycode-home-assignment"
  description = "The project ID to host the cluster in"
}

variable "cluster_name" {
  default = "gke-cluster"
  description = "The name for the GKE cluster"
}

variable "env_name" {
  description = "The environment for the GKE cluster"
}

variable "region" {
  default = "europe-west2"
  description = "The region to host the cluster in"
}

variable "zone" {
  default = "europe-west2-c"
  description = "The zone in region to host the cluster in"
}

variable "network" {
  default = "gke-network"
  description = "The VPC network created to host the cluster in"
}

variable "subnetwork" {
  default = "gke-subnet"
  description = "The subnetwork created to host the cluster in"
}

variable "ip_range_pods_name" {
  default = "ip-range-pods"
  description = "The secondary ip range to use for pods"
}

variable "ip_range_services_name" {
  default = "ip-range-services"
  description = "The secondary ip range to use for services"
}

variable "ssh_user" {
  description = "The user that Administrator will use"
  default     = "root"
}

variable "key_pairs" {
  type = map
  default = {
    root_public_key  = "/home/nivan/Desktop/Projects/Cycode/nir-ivan-local/keys/root_id_ed25519.pub",
    root_private_key = "/home/nivan/Desktop/Projects/Cycode/nir-ivan-local/keys/root_id_ed25519"
  }
}