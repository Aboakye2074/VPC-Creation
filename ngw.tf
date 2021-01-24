resource aws_nat_gateway nicronat1{
 allocation_id = aws_eip.nicro_eip.id
 subnet_id = aws_subnet.publicsub.id
tags = {
 Name = "nicronat1"

}
}
