provider "aws"{
    region = "ap-south-1"
}

resource "aws_instance" "web" {
    ami = "ami-0f58b397bc5c1f2e8"

    instance_type = "t3.micro"

    user_data = <<-EOF
#!/bin/bash

yum update -y

amazon-linux-extras install docker -y

service docker start

systemctl enable docker

EOF
    tags = {
      Name= "devops-demo"
    }
  
}