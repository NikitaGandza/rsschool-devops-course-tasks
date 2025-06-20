variable "public_subnet_cidr_a" {
 type        = string
 description = "Public Subnet CIDR value eu-north-1a"
 default     = "10.0.1.0/24"
}

variable "private_subnet_cidr_a" {
 type        = string
 description = "Private Subnet CIDR value eu-north-1a"
 default     = "10.0.2.0/24"
}

variable "public_subnet_cidr_b" {
 type        = string
 description = "Public Subnet CIDR value eu-north-1b"
 default     = "10.0.3.0/24"
}

variable "private_subnet_cidr_b" {
 type        = string
 description = "Private Subnet CIDR value eu-north-1b"
 default     = "10.0.4.0/24"
}

variable "aws_region" {
 type = string
 default = "eu-north-1"
}