resource "aws_route_table" "testtab1" {
  vpc_id = aws_vpc.myvpc.id
 
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.test.id
  }
  depends_on = [
    aws_vpc.myvpc,
  ]
  tags = {
    Name = "test"
  }
}
