################################################################################
# ECS Module
################################################################################

module "ecs" {
  source = "terraform-aws-modules/ecs/aws"
  version = "3.5.0"
  name = local.name

  capacity_providers = [aws_ecs_capacity_provider.prov1.name]

  tags = local.tags
}

resource "aws_ecs_capacity_provider" "prov1" {
  name = "prov1"

  auto_scaling_group_provider {
    auto_scaling_group_arn         = module.asg.this_autoscaling_group_arn
    managed_termination_protection = "ENABLED"

    managed_scaling {
      status          = "ENABLED"
      target_capacity = 100
    }
  }
}