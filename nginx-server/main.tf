resource "aws_instance" "my-test-instance" {
  ami           = "${data.aws_ami.ubuntu.id}"
  instance_type = "${var.instance_type}"
  key_name      = "${var.key_pair}"

  security_groups = [
    "${var.security_groups}",
  ]

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get -y install nginx",
    ]
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = "${file("${var.key_pair_key}")}"
  }

  tags {
    Name = "${var.name}"
  }
}
