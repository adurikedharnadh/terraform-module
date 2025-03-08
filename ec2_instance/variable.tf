variable "vpc_block" {
    description = "This is CIDR block"
  
}

variable "vpc_name" {
    description = "Name of the vpc"
  
}

variable "subnet_cidr" {
  description = "This is subnet cidr value "
}

variable "subnet_name" {
    description = "This is name of the subnet"
  
}

variable "securitygroup_name" {
    description = "This is a security group"
 }

 variable "securitygroup_tags" {
    description = "This is the tag for the securty group created"

 }

 variable "securitygroup_description" {
   description = "This is the generalal description"
 }

variable "ssh_port" {
  default = "22"
  description = "SSH port"
}

variable "http_port" {
  default = "80"
  description = "HTTP port"
}

variable "protocol" {
  default = "tcp"
  description = "tcp protocol"
}

variable "All_traffic" {
  default = ["0.0.0.0/0"]
  description = "Allow traffic from anywhere"
}

variable "ami_value" {
  description = "This is the ami id of the ec2 instance"
}

variable "instance_type_instance" {
    description = "The type of the instance used"
}

variable "instance_name" {
    default = "Kedhar-instance"
  
}

