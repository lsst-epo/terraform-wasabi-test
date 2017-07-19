# Backend configuration for Terraform state.

terraform {
  backend "s3" {
    bucket = "lsst-epo-test-wasabi-1-terraform-state"
    key    = "network/terraform.tfstate"
    region = "us-west-2"
  }
}