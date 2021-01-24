resource "aws_route_table" "testtab2"{
  vpc_id = aws_vpc.myvpc.id
route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.testnat1.id
  }
depends_on = [
    aws_vpc.myvpc
  ]
tags = {
    Name = "testtab2"
  }
}
