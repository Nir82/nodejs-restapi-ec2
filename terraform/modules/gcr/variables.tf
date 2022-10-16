variable "credentials" {
  default = "/home/nivan/Desktop/Projects/GCP/cycode-home-assignment-064d0740ee53.json"
}

variable "project_id" {
  default = "cycode-home-assignment"
  description = "The project ID to host the cluster in"
}

variable "env_name" {
  description = "The environment for the GCR"
}

variable "region" {
  default = "europe-west2"
  description = "The region to host the cluster in"
}

variable "zone" {
  default = "europe-west2-c"
  description = "The zone in region to host the cluster in"
}