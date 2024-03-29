
/* resource "aws_instance" "EC2" {
  ami           = var.ami_map[var.region]
  instance_type = var.instance_type
  availability_zone = "${var.region}${"a"}"
  key_name = "terra-key"
  depends_on = [ aws_key_pair.terra-key ]
  user_data = <<-EOF
    #!/bin/bash
    sudo apt update -y
    sudo apt install apache2 -y
    sudo systemctl restart apache2
  EOF
  tags = {
    Name = "terra-instance"
  }
}
 */

resource "aws_s3_bucket" "backend_s3" {
  bucket = var.bucket

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}


output "s3" {
  value = aws_s3_bucket.backend_s3.region
}


/* resource "local_file" "azs" {
    content  = data.aws_availability_zones.List_az.state
    filename = "azs.txt"
} */














/*
output "ins-prop" {
    value = ({ami-id = aws_instance.vsc.ami, instance-id=aws_instance.vsc.id})
    
}

/*
resource "aws_vpc" "VPC-TF" {
  cidr_block           = "10.0.0.0/16"
  #instance_tenancy     = "default"

  tags = {
    Date = "30-11-2023"
    Loc = "VSC"
  }
}
*/