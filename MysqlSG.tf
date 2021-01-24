resource "aws_security_group" "MysqlSG" {
  name        = "basic"
  description = "Allow TLS inbound traffic"
  vpc_id      = "aws_vpc.mvpc.id"
  ingress {
    description = "mysql"
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
  tags = {
    Name = "MysqlSG"
  }
}
