variable "region" {
  type        = string
  default     = "us-east-1"
}

variable "env" {
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  type        = list(string)
  default     = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "private_subnets" {
  type        = list(string)
  default     = ["10.0.11.0/24","10.0.12.0/24"]
}

variable "azs" {
  type        = list(string)
  default     = ["us-east-1a","us-east-1b"]
}

variable "key_name" {
  type        = string
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  type        = string
}

# RDS variables
variable "db_name" {}
variable "db_username" {}
variable "db_password" {}

# S3 variable
variable "s3_bucket_name" {}

# DynamoDB variable
variable "dynamodb_table_name" {}
variable "dynamodb_hash_key" {}

# Lambda variables
variable "lambda_handler" {}
variable "lambda_runtime" {}
variable "lambda_filename" {}
variable "lambda_env_variables" {
  type = map(string)
  default = {}
}

# SNS variable
variable "sns_topic_name" {}
