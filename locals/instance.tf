resource "aws_instance" "test" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = local.instance_type
  vpc_security_group_ids = [aws_security_group.allow-tls.id]
  tags = local.ec2_tags

}

resource "aws_security_group" "allow-tls" {
    egress {
        from_port        = 0 # from port 0 to to port 0 means all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] # internet
  }
    ingress {
        from_port        = 0 # from port 0 to to port 0 means all ports
        to_port          = 0
        protocol         = "-1" # -1 means all protocols
        cidr_blocks      = ["0.0.0.0/0"] # internet
        
}
    tags = {
        Name = "allow-tls"
    }
}