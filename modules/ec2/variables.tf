variable "ami" {
    type = string
    default = ""
}
variable "tags_instance" {
    type = map(string)
    default = {}
}
variable "vpc_security_group_ids" {
    type = list(any)
    default = []
}
variable "subnet_id" {
    type = string
    default = ""
}
variable "key_name" {
    type = string
    default = ""
}
#variable "user_data" {
#    type = string
#    default = ""
#}
variable "availability_zone" {
    type = string
    default = ""
}
variable "tags" {
    type = map(string)
    default = {}
}
variable "instance_type" {
    type = string
    default = ""
}

variable "sg_name" {
    type = string
    default = ""
}

variable "sg_ingress" {
  type = list(
    object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)  # list of strings for CIDR blocks
    })
  )
    default = []
}

variable "sg_egress" {
  type = list(
    object({
      from_port   = number
      to_port     = number
      protocol    = string
      cidr_blocks = list(string)  # list of strings for CIDR blocks
    })
  )
    default = []
}