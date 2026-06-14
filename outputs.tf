output "mumbai_public_ip" {
  value = aws_instance.mumbai_instance.public_ip
}

output "virginia_public_ip" {
  value = aws_instance.virginia_instance.public_ip
}