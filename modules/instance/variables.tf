variable "instance_type" {
  description = "The instance type to use"
  type        = string
}
variable "instance_name" {
  description = "The name to use for the instance"
  type        = string
}

variable "zone" {
    default = "us-west2-a"
}

variable "env" {
    type = string
}