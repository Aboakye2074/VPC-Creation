resource "aws_route_table_association" "associate_1" {
  subnet_id      = aws_subnet.pubsub.id
  route_table_id = aws_route_table.testtab1.id
  depends_on = [
    aws_subnet.publicsub,
  ]
}
