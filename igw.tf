resource "aws_internet_gateway" "test" {
  vpc_id = "${aws_vpc.myvpc.id}"
  depends_on = [
    aws_vpc.myvpc,
  ]
  tags = {
    Name = "test"
  }
}
