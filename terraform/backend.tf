terraform {
 backend "gcs" {
   bucket  = "cycode-homeassignment-initial-tf-state"
   prefix  = "terraform/state"
 }
}