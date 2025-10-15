variable "ami_id"{
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type"{
    default = "t3.medium"
}

variable "sg_name"{
    default = "allow_tls"
}

variable "ingress_from_port"{
    default = 0
}

variable "ingress_to_port"{
    default = 0
}
variable "egress_from_port"{
    default = 0
}
variable "egress_to_port"{
    default = 0
}
variable "protocol"{
    default = "-1"
}
variable "cidr"{
    default = ["0.0.0.0/0"]
}
variable "ec2_tags"{
    default={
    Name = "terraform"
    terraform = "true"
    project = "joinDevops"
    Environment = "DEV"
    }
}