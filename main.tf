resource "aws_instance" "mumbai_instance" {
  provider      = aws.mumbai
  ami           = "ami-0e38835daf6b8a2b9"
  instance_type = "t3.micro"

  tags = {
    Name = "Mumbai-EC2"
  }
}

resource "aws_instance" "virginia_instance" {
  provider      = aws.virginia
  ami           = "ami-0521cb2d60cfbb1a6"
  instance_type = "t3.micro"

  subnet_id = "subnet-0c22ddfa9978d1047"

  tags = {
    Name = "Virginia-EC2"
  }
}