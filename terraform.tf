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

resource "aws_instance" "ec2" {
  ami = "ami-03a6eaae9938c858c"
  instance_type = "t2.micro"
}

# module "ec2module" {
#   source = "./modules/ec2"
#   instance_type = "m2.nano"
  
# }







