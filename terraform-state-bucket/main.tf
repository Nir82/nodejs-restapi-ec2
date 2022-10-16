provider "google" {
credentials = var.credentials
project = var.project_id
}

resource "google_storage_bucket" "default" {
  name = var.bucket_name
  force_destroy = true
  storage_class = var.storage_class
  uniform_bucket_level_access = true
  location = var.bucket_location
  versioning {
    enabled = true
  }
  lifecycle_rule {
    condition {
      num_newer_versions = 3
    }
    action {
      type = "Delete"
    }
  }
}

