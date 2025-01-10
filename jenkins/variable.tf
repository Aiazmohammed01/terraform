variable "ami" {
  type    = string
  default = "ami-05576a079321f21f8"
}
variable "tags_instance" {
    type = map(string)
  default = {
    Name  = "Jenkins"
    Environment = "test"
    owner       = "aiaz"
  }
}
variable "vpc_security_group_ids" {
  type    = list(any)
  default = []
}
variable "subnet_id" {
  type    = string
  default = "subnet-00dc9d84f40213196"
}
variable "key_name" {
  type    = string
  default = "devops-keypair"
}
#variable "user_data" {
#    type = string
#    default = ""
#}
variable "availability_zone" {
  type    = string
  default = "us-east-1a"
}
variable "tags" {
  type = map(string)
  default = {
    Environment = "test"
    owner       = "aiaz"
  }
}
variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sg_name" {
  type    = string
  default = "jenkins_sg"
}

variable "sg_ingress" {
  type = list(
    object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string) # list of strings for CIDR blocks
    })
  )
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}

variable "sg_egress" {
  type = list(
    object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string) # list of strings for CIDR blocks
    })
  )
  default = [
    {
      from_port   = 0
      to_port     = 0
      protocol    = "-1"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}