# Output the public IPs for Ansible
output "sonarqube_public_ip" {
  value = aws_instance.sonarqube.public_ip
}

output "nexus_public_ip" {
  value = aws_instance.nexus.public_ip
}

output "docker_public_ip" {
  value = aws_instance.docker.public_ip
}