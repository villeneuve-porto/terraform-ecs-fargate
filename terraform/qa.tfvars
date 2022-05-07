# qa.tfvars

aws_region = "us-east-1"

ecs_task_execution_role_name = "myEcsTaskExecutionRole"

az_count = "3"

app_name = "decisioning-qa"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "1024"

fargate_memory = "2048"

#variables alb.tf
aws_alb_name         = "decisioning-alb-qa"
aws_alb_target_group = "decisioning-alb-target-group-qa"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-qa"
app_log_stream_name = "decisioning-app-log-group-qa"

# security.tf
aws_security_group_lb = "decisioning-qa-alb-security-group"
aws_security_group_tasks = "decisioning-qa-ecs-tasks-security-group"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-qa"
family_name          = "decisioning-qa"
aws_ecs_service_name = "decisioning-service-qa"
container_name       = "decisioning-qa"