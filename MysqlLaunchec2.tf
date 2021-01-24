resource "aws_instance" "mysqlOS" {
  ami           = "ami-03130878b60947df3"
  instance_type = "t2.micro"
  key_name      = "Caf-Nkey"
  subnet_id =  aws_subnet.prisub.id
  vpc_security_group_ids = [ "aws_security_group.SG.id" ]
  tags = {
    Name = "mysqlOS"
  }
}
