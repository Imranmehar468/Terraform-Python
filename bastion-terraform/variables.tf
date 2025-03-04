variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ami_id" {
  description = "AMI ID for the bastion host"
}

variable "instance_type" {
  description = "Instance type for the bastion host"
  default     = "t3.micro"
}

variable "public_subnet_id" {
  description = "Public subnet ID where the bastion host will be deployed"
}

variable "vpc_id" {
  description = "VPC ID where the bastion host belongs"
}

variable "ssh_key_name" {
  description = "SSH key pair name for connecting to the bastion host"
}

variable "allowed_ips" {
  description = "List of IPs allowed to SSH into the bastion"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}