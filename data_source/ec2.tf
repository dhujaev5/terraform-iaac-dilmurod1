#go to region us-east-2
provider "aws" {
    region = "us-east-2" 
}

#search for ubuntu latest with the owner
data "aws_ami" "ubuntu" {
    most_recent = true
    owners = ["099720109477"] 
}

#show the AMI id
output "ami" {
    value = "${data.aws_ami.ubuntu.id}"
}