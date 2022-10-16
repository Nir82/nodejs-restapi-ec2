// Create the environment/s
// If you want to provision more than one environment, recomment the other environment modules out
#----------------------------------------Dev--------------------------------------

module "gke_dev_cluster" {
  source = "./modules/gke_cluster"
  env_name   = "dev"
}

module "artifact_registry_dev_environment" {
  source = "./modules/gcr"
  env_name   = "dev"
}

#----------------------------------------Staging----------------------------------

# module "gke_staging_cluster" {
#   source = "./modules/gke_cluster"
#   env_name   = "staging"
# }

# module "artifact_registry_staging_environment" {
#   source = "./modules/gcr"
#   env_name   = "staging"
# }

#----------------------------------------Prod--------------------------------------

# module "gke_prod_cluster" {
#   source = "./modules/gke_cluster"
#   env_name   = "prod"
# }

# module "artifact_registry_prod_environment" {
#   source = "./modules/gcr"
#   env_name   = "prod"
# }
