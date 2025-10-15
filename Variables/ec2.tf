resource "aws_instance" "terraform"{
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.security_group.id]
  tags = var.ec2_tags
}
resource "aws_security_group" "security_group" {
  name        = "allow_tls"
    
  egress {
    from_port        = var.egress_from_port # from port 0 to toport 0 means all ports
    to_port          = var.egress_to_port
    protocol         = "-1" # all protocalls
    cidr_blocks      = ["0.0.0.0/0"] # internet
    ipv6_cidr_blocks = ["::/0"]
  }
   ingress {
    from_port        = var.ingress_from_port
    to_port          = var.ingress_to_port
    protocol         = var.protocol
    cidr_blocks      = var.cidr
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_tls"
    
  }
}