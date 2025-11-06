module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
  azs            = var.azs
  env            = var.env
}

module "ec2" {
  source       = "./modules/ec2"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.public_subnets
  instance_type = var.instance_type
  ami_id        = var.ami_id
  key_name      = var.key_name
  env           = var.env
}

module "rds" {
  source       = "./modules/rds"
  subnet_ids   = module.vpc.private_subnets
  db_name      = var.db_name
  username     = var.db_username
  password     = var.db_password
  env          = var.env
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
  env         = var.env
}

module "dynamodb" {
  source     = "./modules/dynamodb"
  table_name = var.dynamodb_table_name
  hash_key   = var.dynamodb_hash_key
  env        = var.env
}

module "lambda" {
  source           = "./modules/lambda"
  handler          = var.lambda_handler
  runtime          = var.lambda_runtime
  filename         = var.lambda_filename
  env_variables    = var.lambda_env_variables
  env              = var.env
}

module "sns" {
  source      = "./modules/sns"
  topic_name  = var.sns_topic_name
  env         = var.env
}
