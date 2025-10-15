resource "aws_instance" "terraform"{
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  count = length(var.ec2_instance)
  vpc_security_group_ids = [aws_security_group.security_group.id]

  tags = {
    Name = var.ec2_instance[count.index]
      }
}
resource "aws_security_group" "security_group" {
  name        = "allow_tls"
    
  egress {
    from_port        = 0 # from port 0 to toport 0 means all ports
    to_port          = 0
    protocol         = "-1" # all protocalls
    cidr_blocks      = ["0.0.0.0/0"] # internet
    ipv6_cidr_blocks = ["::/0"]
  }
   ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow_tls"
    
  }
}