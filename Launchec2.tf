resource "aws_instance" "wordpressOS" {
  ami           = "ami-03130878b60947df3"
  instance_type = "t2.micro"
associate_public_ip_address = true
  key_name      = "Caf-Nkey"
  subnet_id =  aws_subnet.publicsub.id
  availability_zone = "us-west-1a"
  vpc_security_group_ids = [ aws_security_group.task4.id ]
  tags = {
    Name = "wordpressOS"

  }
}

