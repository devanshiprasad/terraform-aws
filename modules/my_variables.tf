variable "my_env" {
  type        = string
  description = "environment for infra"
}
variable "ami_id" {
  type        = string
  description = "ami id for ec2"
}
variable "instance_type" {
  type        = string
  description = "type of instance for infra"
}

variable "instance_count"{
  type        = number
  description = "no. of instances needed"
}
