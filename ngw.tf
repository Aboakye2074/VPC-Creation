resource “aws_nat_gateway” “testnat1”{
 allocation_id = aws_eip.test_eip.id
 subnet_id = aws_subnet.pubsub.id
tags = {
 Name = “testnat1”
 
}
}
