resource "aws_instance" "server-ubuntu" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
  key_name                = "jcde-key"

  tags = {
    Name = "Ubuntu-1"
  }
}

# resource "aws_instance" "server-awslinux" {
#   ami                     = var.AWS_AMIS_AWSLINUX[var.AWS_REGION]
#   instance_type           = var.AWS_INSTANCE_TYPE
#   vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
#   key_name                = "jcde-key"

#   tags = {
#     Name = "awslinux-1"
#   }
# }

resource "aws_instance" "server-redhat" {
  ami                     = "ami-0f86a70488991335e"
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
  key_name                = "jcde-key"

  tags = {
    Name = "awslinux-1"
  }
}

# resource "aws_instance" "server-ubuntu-2" {
#   ami                     = var.AWS_AMIS[var.AWS_REGION]
#   instance_type           = var.AWS_INSTANCE_TYPE
#   vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
#   key_name                = "jcde-key"

#   tags = {
#     Name = "Ubuntu-2"
#   }
# }

# resource "aws_instance" "server-awslinux-2" {
#   ami                     = var.AWS_AMIS_AWSLINUX[var.AWS_REGION]
#   instance_type           = var.AWS_INSTANCE_TYPE
#   vpc_security_group_ids  = ["sg-0bb6689aa41b455bd", "sg-02c36909d5234b1b9"]
#   key_name                = "jcde-key"

#   tags = {
#     Name = "awslinux-2"
#   }
# }



output "ip-ubuntu" {
  value = aws_instance.server-ubuntu.public_ip
}

output "ip-redhat" {
  value = aws_instance.server-redhat.public_ip
}

# output "ip-ubuntu-2" {
#   value = aws_instance.server-ubuntu-2.public_ip
# }

# output "ip-awslinux" {
#   value = aws_instance.server-awslinux.public_ip
# }

# output "ip-awslinux-2" {
#   value = aws_instance.server-awslinux-2.public_ip
# }