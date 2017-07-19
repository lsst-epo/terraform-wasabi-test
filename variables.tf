# Servers in cluster.
variable "count" {
  default = 1
}

data "terraform_remote_state" "lsst-epo-test-wasabi-terraform-state" {
    backend = "s3"
    config {
        bucket = "lsst-epo-test-wasabi-1-terraform-state"
        key = "network/terraform.tfstate"
        region = "us-west-2"
    }
}
