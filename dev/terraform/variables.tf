# variables.tf
//  description = "The AWS region things are created in"
variable "aws_region" {}
variable "aws_vpc" {}

variable "vpc_enable_dns_support" {}

variable "vpc_enable_dns_hostnames" {}

variable "aws_s3_bucket_name" {}
variable "environment_name" {}

//  description = "ECS task execution role name"
variable "ecs_task_execution_role_name" {}

//  description = "Number of AZs to cover in a given region"
variable "az_count" {}

variable "app_name" {}

//  description = "Docker image to run in the ECS cluster"
variable "app_image" {}

//  description = "Port exposed by the docker image to redirect traffic to"
variable "app_port" {}

//  description = "Number of docker containers to run"
variable "app_count" {}

variable "health_check_path" {}

//  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
variable "fargate_cpu" {}

//  description = "Fargate instance memory to provision (in MiB)"
variable "fargate_memory" {}

variable "aws_alb_name" {}
variable "aws_alb_target_group" {}

# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
variable "app_log_group_name" {}
variable "app_log_stream_name" {}

# security.tf
variable "aws_security_group_lb" {}
variable "aws_security_group_tasks" {}

# ecs.tf
variable "aws_ecs_cluster_name" {}
//variable "decisioning-app-task" {}
variable "family_name" {}
variable "family_name_02" {}
variable "family_name_03" {}
variable "aws_ecs_service_name" {}
variable "aws_ecs_service_name_02" {}
variable "aws_ecs_service_name_03" {}
variable "container_name" {}