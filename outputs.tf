output "server-ip" {
  value = "${aws_eip.test-elastic-ip.public_ip}"
}
