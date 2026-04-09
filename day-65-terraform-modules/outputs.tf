output "web_ip" {

  value=module.web_server.public_ip

}

output "api_ip" {

  value=module.api_server.public_ip

}