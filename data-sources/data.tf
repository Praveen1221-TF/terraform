data "aws_ami" "Joindevops" {

owners           = ["973714476881"]
most_recent      = true

filter {
    name   = "name"
    values = ["RHEL-9-DevOps-Practice"]
  }

 filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

output "ami_id" {
    value = data.aws_ami.Joindevops.id
  
}

data "aws_instance" "mongodb" {
  instance_id = "i-03c15d063979eecfc"

}

output "mongodb" {
    value = data.aws_instance.mongodb.subnet_id
}

