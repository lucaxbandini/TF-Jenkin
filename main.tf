provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "LBJenkin" {
    ami = "ami-04a81a99f5ec58529"
    instance_type = "t2.micro"
    count = 3
    tags = {
        name = "LBJenkin-${count.index}"
    }
}
