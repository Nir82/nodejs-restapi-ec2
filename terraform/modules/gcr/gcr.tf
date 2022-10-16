terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.39.0"
    }
  }
}

provider "google" {
  credentials = var.credentials

  project = var.project_id
  region  = var.region
  zone    = var.zone
}

resource "google_project_service" "apis" {
  service = "artifactregistry.googleapis.com"
}

resource "google_artifact_registry_repository" "docker_ar" {
  provider = google-beta

  project       = var.project_id
  location      = var.region
  repository_id = "docker-ar-${var.env_name}"
  description   = "Docker repository"
  format        = "DOCKER"

  depends_on = [google_project_service.apis]
}