
# variable "ami" {
# }

variable "instance_type" {
  default = "t3.micro"
}

variable "region" {
  type = string
  default = "us-east-1"
}

variable "bucket" {
  type = string
  default = "tfstate-28mar24"
}

variable "ami_map" {
  type = map(string)
  default = {
    "ap-south-1" = "ami-03f4878755434977f"
    "us-east-1" = "ami-07d9b9ddc6cd8dd30"
    "us-east-2" = "ami-0f5daaa3a7fb3378b"
  }
}

variable "users" {
  type = list(string)
  default = [ "user1", "user2","user3" ]
}