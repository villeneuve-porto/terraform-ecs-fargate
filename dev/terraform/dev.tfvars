# dev.tfvars

aws_region = "eu-west-3"

aws_vpc = "selina-dev-vpc"

aws_s3_bucket_name = "selina-finance-remote-state"

environment_name   = "dev"

vpc_enable_dns_support= "true"

vpc_enable_dns_hostnames = "true"

ecs_task_execution_role_name = "myEcsTaskExecutionRole-dev"

az_count = "3"

app_name = "decisioning-dev"

app_image = "986296009542.dkr.ecr.eu-west-1.amazonaws.com/decisioning-service-qa:68192736af97e7a5d7e993c3418dae1db752a12b-qa"

app_port = 80
//app_port_2 = 80
//app_port_3 = 80

app_count = 3

health_check_path = "/"

fargate_cpu = "256"
//fargate_cpu_2 = "1024"
//fargate_cpu_3 = "1024"

fargate_memory = "512"
//fargate_memory_2 = "2048"
//fargate_memory_3 = "2048"

#variables alb.tf
aws_alb_name         = "decisioning-alb-dev"
aws_alb_target_group = "decisioning-alb-tg-dev"

#auto-scaling.tf

# logs.tf
app_log_group_name  = "/ecs/decisioning-app-dev"
app_log_stream_name = "decisioning-app-log-group-dev"

# security.tf
aws_security_group_lb    = "decisioning-dev-alb-sg"
aws_security_group_tasks = "decisioning-dev-ecs-tasks-sg"

# ecs.tf
aws_ecs_cluster_name = "decisioning-cluster-dev"
family_name          = "decisioning-dev"
family_name_02       = "decisioning-dev-app-02"
family_name_03       = "decisioning-dev-app-03"
aws_ecs_service_name = "decisioning-service-dev"
aws_ecs_service_name_02 = "decisioning-service-02-dev"
aws_ecs_service_name_03 = "decisioning-service-03-dev"
container_name       = "decisioning-dev"
//container_name_2       = "decisioning-dev_2"
//container_name_3       = "decisioning-dev_3"