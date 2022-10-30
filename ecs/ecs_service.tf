resource "aws_ecs_service" "ECS-service" {
  name            = "ECS-service"
  cluster      = module.ecs.ecs_cluster_id
  task_definition = aws_ecs_task_definition.Terraform_ECS.arn
  desired_count   = 2
  #iam_role        = aws_iam_role.task_role.arn

  deployment_maximum_percent         = var.deploy_max_percent
  deployment_minimum_healthy_percent = var.deploy_min_percent
}