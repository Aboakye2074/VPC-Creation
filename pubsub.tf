resource "aws_subnet" "pubsub" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "192.168.0.0/24"
  availability_zone = "us-west-1a"
  map_public_ip_on_launch = "true"
  depends_on = [
    aws_vpc.myvpc,
  ]
  tags = {
    Name = "pubsub"
  }
}
