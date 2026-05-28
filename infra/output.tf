output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}

output "ec2_private_ips" {
  value = {
    for i, instance in aws_instance.ec2 :
    local.instance_names[i] => instance.private_ip
  }
}

output "ec2_public_ips" {
  value = {
    for i, instance in aws_instance.ec2 :
    local.instance_names[i] => instance.public_ip
  }
}

output "ec2_availability_zones" {
  value = {
    for i, instance in aws_instance.ec2 :
    local.instance_names[i] => instance.availability_zone
  }
}