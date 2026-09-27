#   resource "aws_instance" "ec2" {
#       count = 4
#       ami = "ami-0220d79f3f480ecf5"
#       instance_type = "t3.small"
#       vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    


#     tags = {
#       Name = count.index == 0 ? "ansible-server" : "agent-${count.index}"
#     }

    
#   }

#   resource "aws_security_group" "ec2_sg" {
#     name        = "ec2_security_group"
#     description = "Allow SSH and HTTP"


#   ingress {
#       from_port   = 22
#       to_port     = 22
#       protocol    = "tcp"
#       cidr_blocks = ["0.0.0.0/0"]
    
#   }
#   ingress {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#       }

#   egress {
#       from_port   = 0
#       to_port     = 0
#       protocol    = "-1"
#       cidr_blocks = ["0.0.0.0/0"]
#   }

#   tags = {
#       Name = "EC2SecurityGroup"
#       }
#   }

#   resource "aws_ec2_instance_state" "stop_instance" {
#     count = length(aws_instance.ec2)

#     instance_id = aws_instance.ec2[count.index].id
#     state       = "running"
#   }


#   output "instance_details" {
#   value = {
#     for instance in aws_instance.ec2 :
#     instance.tags.Name => instance.public_ip
#   }
# }

  resource "aws_instance" "ec2" {
      count = 10
      ami = "ami-0220d79f3f480ecf5"
      instance_type = "t3.small"
      vpc_security_group_ids = [aws_security_group.ec2_sg.id]
    


    tags = {
      Name = count.index == 0 ? "ansible-server" : "agent-${count.index}"
    }

    
  }

  resource "aws_security_group" "ec2_sg" {
    name        = "ec2_security_group"
    description = "Allow SSH and HTTP"


  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    
  }
  ingress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
      }

  egress {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
      Name = "EC2SecurityGroup"
      }
  }

  resource "aws_ec2_instance_state" "stop_instance" {
    count = length(aws_instance.ec2)

    instance_id = aws_instance.ec2[count.index].id
    state       = "running"
  }


  output "instance_details" {
  value = {
    for instance in aws_instance.ec2 :
    instance.tags.Name => instance.public_ip
  }
}

