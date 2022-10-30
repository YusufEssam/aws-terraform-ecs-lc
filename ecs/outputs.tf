################################################################################
# Cluster
################################################################################

output "cluster_arn" {
  description = "ARN that identifies the cluster"
  value       = module.ecs.ecs_cluster_arn
}

output "cluster_id" {
  description = "ID that identifies the cluster"
  value       = module.ecs.ecs_cluster_id
}

output "cluster_name" {
  description = "Name that identifies the cluster"
  value       = module.ecs.ecs_cluster_name
}

################################################################################
# Cluster Capacity Providers
################################################################################

output "cluster_capacity_providers" {
  description = "Map of cluster capacity providers attributes"
  value       = aws_ecs_capacity_provider.prov1.name
}
################################################################################
# Capacity Provider
################################################################################

output "autoscaling_capacity_providers" {
  description = "Map of capacity providers created and their attributes"
  value       = aws_ecs_capacity_provider.prov1.name
}

################################################################################
# Autoscaling group
################################################################################
output "autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = module.asg.this_autoscaling_group_arn
}
################################################################################
# Loadbalancer
################################################################################
output "lb_id" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_id
}

output "lb_arn" {
  description = "The ID and ARN of the load balancer we created."
  value       = module.alb.lb_arn
}

output "lb_dns_name" {
  description = "The DNS name of the load balancer."
  value       = module.alb.lb_dns_name
}

################################################################################
# Security_group
################################################################################

output "security_group_arn" {
  description = "The ARN of the security group"
  value       = [module.ECS_sg.security_group_arn , module.alb_sg.security_group_arn]
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = [module.ECS_sg.security_group_id , module.alb_sg.security_group_id]
  }

output "security_group_owner_id" {
  description = "The owner ID"
  value       = [module.ECS_sg.security_group_owner_id , module.alb_sg.security_group_owner_id]
}