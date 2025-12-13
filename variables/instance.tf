resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.type
  vpc_security_group_ids = [aws_security_group.allow-tls.id]

  tags = var.ec2_tags
}

resource "aws_security_group" "allow-tls" {
    egress {
        from_port        = var.egress_from # from port 0 to to port 0 means all ports
        to_port          = var.egress_to
        protocol         = var.protocol # -1 means all protocols
        cidr_blocks      = var.cidr # internet
  }
    ingress {
        from_port        = var.ingress_from # from port 0 to to port 0 means all ports
        to_port          = var.ingress_to
        protocol         = var.protocol # -1 means all protocols
        cidr_blocks      = var.cidr # internet
        
}
    tags = {
        Name = var.sg_name
    }
}