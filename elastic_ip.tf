resource "aws_eip" "test-elastic-ip" {
  instance = "${aws_instance.my-test-instance.id}"
}
