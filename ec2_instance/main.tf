resource "aws_vpc" "vpc_create" {
     cidr_block = var.vpc_block
     tags = {
       Name=var.vpc_name
     }
  }

resource "aws_subnet" "subnet_create" {
    vpc_id = aws_vpc.vpc_create.id
    cidr_block = var.subnet_cidr
    tags = {
      Name = var.subnet_name
    }
}

resource "aws_security_group" "secirutygroup_name" {
    name = var.securitygroup_name
    description = var.securitygroup_description
    
    vpc_id = aws_vpc.vpc_create.id

    tags = {
      Name=  var.securitygroup_tags
    }
   ingress {
   from_port = var.ssh_port
   to_port = var.ssh_port
   protocol = var.protocol
   cidr_blocks = var.All_traffic
   }
    ingress {
   from_port = var.http_port
   to_port = var.http_port
   protocol = var.protocol
   cidr_blocks = var.All_traffic
   }
}

resource "aws_instance" "ec2_server" {
  ami = var.ami_value
  instance_type = var.instance_type_instance
  tags = {
    Name= var.instance_name
  }
  subnet_id = aws_subnet.subnet_create.id
  security_groups = [aws_security_group.secirutygroup_name.id]
}
   
  