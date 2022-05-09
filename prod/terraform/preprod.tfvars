# preprod.tfvars

aws_region = "eu-west-1"

vpc_enable_dns_support= "true"

vpc_enable_dns_hostnames = "true"

ecs_task_execution_role_name = "myEcsTaskExecutionRole"

az_count = "3"

app_name = "decisioning-preprod"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "1024"

fargate_memory = "2048"

#variables alb.tf
aws_alb_name         = "decisioning-alb-preprod"
aws_alb_target_group = "decisioning-alb-tg-preprod"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-preprod"
app_log_stream_name = "decisioning-app-log-group-preprod"

# security.tf
aws_security_group_lb    = "decisioning-preprod-alb-sg"
aws_security_group_tasks = "decisioning-preprod-ecs-tasks-sg"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-preprod"
family_name          = "decisioning-preprod"
aws_ecs_service_name = "decisioning-service-preprod"
container_name       = "decisioning-preprod"