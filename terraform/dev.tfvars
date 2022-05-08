# dev.tfvars

aws_region = "us-east-1"

aws_s3_bucket_name = "selina-terraform-remote-us"
environment_name   = "dev"

ecs_task_execution_role_name = "myEcsTaskExecutionRole"

az_count = "3"

app_name = "decisioning-dev"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "1024"

fargate_memory = "2048"

#variables alb.tf
aws_alb_name         = "decisioning-alb-dev"
aws_alb_target_group = "decisioning-alb-target-group-dev"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-dev"
app_log_stream_name = "decisioning-app-log-group-dev"

# security.tf
aws_security_group_lb    = "decisioning-dev-alb-security-group"
aws_security_group_tasks = "decisioning-dev-ecs-tasks-security-group"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-dev"
family_name          = "decisioning-dev"
aws_ecs_service_name = "decisioning-service-dev"
container_name       = "decisioning-dev"