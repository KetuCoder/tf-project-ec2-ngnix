# VPC
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

# EC2
output "ec2_instance_id" {
  value = module.ec2.instance_id
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}

# RDS
output "rds_endpoint" {
  value = module.rds.db_endpoint
}

# S3
output "s3_bucket_name" {
  value = module.s3.bucket_name
}

# DynamoDB
output "dynamodb_table_name" {
  value = module.dynamodb.table_name
}

# Lambda
output "lambda_arn" {
  value = module.lambda.lambda_arn
}

# SNS
output "sns_topic_arn" {
  value = module.sns.topic_arn
}
