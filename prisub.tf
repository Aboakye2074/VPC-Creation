resource "aws_subnet" "prisub" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "192.168.1.0/24"
  availability_zone = "us-west-1b"
  map_public_ip_on_launch = "false"
  depends_on = [
    aws_vpc.myvpc,
  ]
  tags = {
    Name = "prisub"
  }
}
