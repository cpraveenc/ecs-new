output "vpc_id" {
  description = "VPC ID created by the networking module"
  value       = module.networking.vpc_id
}

output "public_subnet_ids" {
  description = "Public subnet IDs created by the networking module"
  value       = module.networking.public_subnet_ids
}

output "private_subnet_ids" {
  description = "Private subnet IDs created by the networking module"
  value       = module.networking.private_subnet_ids
}

output "alb_dns_name" {
  description = "DNS name of the ALB created by the ECS module"
  value       = module.ecs.alb_dns_name
}
