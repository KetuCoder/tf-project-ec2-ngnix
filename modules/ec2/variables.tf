variable "vpc_id" {
  type        = string
  description = "VPC ID where EC2 will be deployed"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet IDs for EC2 placement"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for EC2"
}

variable "key_name" {
  type        = string
  description = "Key pair name for SSH access"
}

variable "env" {
  type        = string
  description = "Environment name"
}
