variable "dynamo_table_name" {
  type        = string
  default     = "terra-table"
  description = "table for terraform"
}

variable "ami_id" {
  default     = "ami-0dee22c13ea7a9a67"
  description = "ami id for ec2 instance"
}

