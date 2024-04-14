terraform {
  backend "s3" {
    bucket = "my-terraform-junaid"
    key    = "terraform.tfstate/dev"
    region = "ap-south-1"
  }
}