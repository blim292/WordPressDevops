output "ec2_dns" {
  description = "List of Public DNS names assigned to the instances."
  value       = [aws_instance.wordpress_ec2.*.public_dns]
}