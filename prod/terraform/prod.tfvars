# prod.tfvars

aws_region = "eu-west-3"

aws_s3_bucket_name = "selina-finance-remote-state"

environment_name ="prod"

vpc_enable_dns_support= "true"

vpc_enable_dns_hostnames = "true"

ecs_task_execution_role_name = "myEcsTaskExecutionRole"

az_count = "3"

app_name = "decisioning-prod"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "256"

fargate_memory = "512"

#variables alb.tf
aws_alb_name         = "decisioning-alb-prod"
aws_alb_target_group = "decisioning-alb-tg-prod"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-prod"
app_log_stream_name = "decisioning-app-log-group-prod"

# security.tf
aws_security_group_lb    = "decisioning-prod-alb-sg"
aws_security_group_tasks = "decisioning-prod-ecs-tasks-sg"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-prod"
family_name          = "decisioning-prod"
aws_ecs_service_name = "decisioning-service-prod"
container_name       = "decisioning-prod"