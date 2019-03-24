output "server-ip-1" {
  value = "${module.nginx-server.server-ip}"
}

output "server-ip-2" {
  value = "${module.nginx-server-2.server-ip}"
}
