variable "subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for RDS"
}

variable "engine" {
  type        = string
  default     = "mysql"
}

variable "instance_class" {
  type        = string
  default     = "db.t3.micro"
}

variable "allocated_storage" {
  type        = number
  default     = 20
}

variable "db_name" {
  type        = string
}

variable "username" {
  type        = string
}

variable "password" {
  type        = string
}

variable "env" {
  type        = string
}
