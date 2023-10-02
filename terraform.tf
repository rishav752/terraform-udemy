# variable "map" {
#   type = map(any)
#   default = {
#     a : 10
#   }
# }

# variable "yo" {
#   default = "a"
# }

# data "aws_ami" "api_finder" {
#   filter {
#     name   = "name"
#     values = ["al2023-ami-2023.2.20230920.1*"]
#   }
#   most_recent = true
  
# }

# module "ec2module" {
#   source = "./modules/ec2"
#   instance_type = "m2.nano"
  
# }


module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.5.0"
  name = "single-instance"
  instance_type          = var.insType[terraform.workspace]
  subnet_id              = "subnet-0e3932f7a00363130"
}



variable "insType" {
  default={
  dev= "t2.nano"
  default = "t2.micro"
  }
}



