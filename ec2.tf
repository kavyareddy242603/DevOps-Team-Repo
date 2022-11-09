provider "aws" {
  region     = "us-east-1"
  access_key = "__ACCESSKEY__"
  secret_key = "__SECRETKEY__"
}
resource "aws_instance" "ec2instance" {
  ami           = "ami-051dfed8f67f095f5"
  instance_type = "t2.micro"
  subnet_id = "subnet-08e06c014b413546e"
  key_name = "kavyakeypair"
  tags = {
    Name ="KAVYASERVER"
    Environment = "DEV"
    OS = "Linux"
    Managed = "IAC"
  }
}