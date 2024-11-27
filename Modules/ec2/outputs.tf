output "instance_id" {
  description = "ID of the created instance"
  value       = aws_instance.auto-demo-instance.id
}

output "instance_public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.auto-demo-instance.public_ip
}
