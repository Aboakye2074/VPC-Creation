resource “aws_route_table_association” “associate_2”{
 subnet_id = aws_subnet.prisub.id
 route_table_id = aws_route_table.testtab2.id
depends_on = [
    aws_subnet.prisub,
  ]
}
