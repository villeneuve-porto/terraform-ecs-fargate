# ecs.tf

//resource "aws_ecs_cluster" "main" {
//  name = "dev-cluster"
//}
resource "aws_ecs_cluster" "main" {
  name = var.aws_ecs_cluster_name
  setting {
    name  = "containerInsights"
    value = "enabled"
  }
  tags = {
    Name = "var.ecs_cluster_name"
  }
}

data "template_file" "cb_app" {
  template = file("./templates/ecs/decisioning_app.json.tpl")

  vars = {
    app_name           = var.app_name
    app_image          = var.app_image
    app_port           = var.app_port
    fargate_cpu        = var.fargate_cpu
    fargate_memory     = var.fargate_memory
    aws_region         = var.aws_region
    app_log_group_name = var.app_log_group_name
  }
}

resource "aws_ecs_task_definition" "app" {
  //family                   = "cb-app-task" var.family_name
  family                   = var.family_name
  execution_role_arn       = aws_iam_role.ecs_task_execution_role.arn
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = var.fargate_cpu
  memory                   = var.fargate_memory
  container_definitions    = data.template_file.cb_app.rendered
}

resource "aws_ecs_service" "main" {
  name            = var.aws_ecs_service_name
  cluster         = aws_ecs_cluster.main.id
  task_definition = aws_ecs_task_definition.app.arn
  desired_count   = var.app_count
  launch_type     = "FARGATE"

  network_configuration {
    security_groups  = [aws_security_group.ecs_tasks.id]
    subnets          = aws_subnet.private.*.id
    assign_public_ip = false
  }

  load_balancer {
    target_group_arn = aws_alb_target_group.app.id
    container_name   = var.container_name
    container_port   = var.app_port
  }

  depends_on = [aws_alb_listener.front_end, aws_iam_role_policy_attachment.ecs_task_execution_role]
}

