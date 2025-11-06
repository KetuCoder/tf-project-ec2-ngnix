variable "handler" {
  type        = string
}

variable "runtime" {
  type        = string
}

variable "filename" {
  type        = string
}

variable "env_variables" {
  type        = map(string)
  default     = {}
}

variable "env" {
  type        = string
}
