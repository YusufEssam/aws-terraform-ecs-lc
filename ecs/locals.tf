locals {
  name   = "ecs-tf"

  user_data = <<-EOT
    #!/bin/bash
    cat <<'EOF' >> /etc/ecs/ecs.config
    ECS_CLUSTER=${local.name}
    ECS_LOGLEVEL=debug
    EOF
  EOT  

  tags = {
    Name       = local.name
    Example    = local.name

  }
}