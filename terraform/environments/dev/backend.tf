# Terraform init and connect to gcp bucket to store the tf state

terraform {
  backend "gcs" {
    bucket = var.project_id
    prefix = "env/dev"
  }
}