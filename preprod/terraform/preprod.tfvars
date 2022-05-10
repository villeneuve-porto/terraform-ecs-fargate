# preprod.tfvars

aws_region = "eu-west-2"

aws_s3_bucket_name = "selina-finance-remote-state"

environment_name ="preprod"

vpc_enable_dns_support= "true"

vpc_enable_dns_hostnames = "true"

ecs_task_execution_role_name = "myEcsTaskExecutionRole-preprod"

az_count = "2"

app_name = "decisioning-preproduct"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "1024"

fargate_memory = "2048"

#variables alb.tf
aws_alb_name         = "decisioning-alb-preproduct"
aws_alb_target_group = "decisioning-alb-tg-preproduct"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-preproduct"
app_log_stream_name = "decisioning-app-log-group-preproduct"

# security.tf
aws_security_group_lb    = "decisioning-preproduct-alb-sg"
aws_security_group_tasks = "decisioning-preproduct-ecs-tasks-sg"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-preproduct"
family_name          = "decisioning-preproduct"
aws_ecs_service_name = "decisioning-service-preproduct"
container_name       = "decisioning-preproduct"