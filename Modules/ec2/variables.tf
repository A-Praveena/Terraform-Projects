variable "ami_id" {
    description = "AMI ID for the instance"
    type = string
  
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
}

variable "key_name" {
  description = "Key name for SSH access"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}