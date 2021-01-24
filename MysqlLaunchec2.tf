resource "aws_instance" "mysqlOS" {
  ami           = "ami-03130878b60947df3"
  instance_type = "t2.micro"
  key_name      = "Caf-Nkey"
  availability_zone = "us-west-1b"
  subnet_id =  aws_subnet.privatesub.id
  vpc_security_group_ids = [ aws_security_group.mysqlsg.id ]
  tags = {
    Name = "mysqlOS"
  }
}
