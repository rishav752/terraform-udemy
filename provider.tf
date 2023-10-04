# terraform {
#   backend "s3" {
#     bucket = "terraform-backend-rishav"
#     key    = "terraform.tfstate"
#     region = "us-east-1"
#   }
# }


provider "aws" {
  region = "us-east-1"
}