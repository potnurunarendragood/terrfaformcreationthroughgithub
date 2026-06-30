provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_instance" "example" {
  count = 1
  ami           = "ami-01066fdebf4814472"
  instance_type = "t2.micro"
 
  tags = {
    Name = "tf-example-1"
  }
}
