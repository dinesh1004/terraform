variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
}

variable "type" {
    type = string
    default = "t3.micro"
}

variable "ec2_tags" {
    type = map 
    default = {
        Name = "test_instance"
        terraform = "true"
        project = "join devops"
        Environment = "DEV"
    }
}

variable "sg_name" {
    type = string
    default = "allow-tls"
    # optional to inform what is this variable about
    description = "Security Group Name to attach to EC2 instance"
}

variable "cidr" {
    type =list
    default = ["0.0.0.0/0"]
}

variable "egress_from" {
    default = 0
}

variable "egress_to" {
    default = 0
}

variable "ingress_from" {
    default = 0
}

variable "ingress_to" {
    default = 0
}

variable "protocol" {
    type = string
    default = "-1"
}
