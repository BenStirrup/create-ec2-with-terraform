module "nginx-server" {
  source = "nginx-server"

  name         = "nginx-server"
  key_pair     = "${aws_key_pair.my-test-key.key_name}"
  key_pair_key = "${var.private_key}"

  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_http.name}",
    "${aws_security_group.allow_outbound.name}",
  ]
}

module "nginx-server-2" {
  source = "nginx-server"

  name         = "nginx-server-2"
  key_pair     = "${aws_key_pair.my-test-key.key_name}"
  key_pair_key = "${var.private_key}"

  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_http.name}",
    "${aws_security_group.allow_outbound.name}",
  ]
}
