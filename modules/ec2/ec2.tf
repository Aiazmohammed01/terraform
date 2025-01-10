resource "aws_instance" "this" {
    ami = var.ami
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    availability_zone = var.availability_zone
#    user_data = var.user_data
    vpc_security_group_ids = [aws_security_group.this.id]
    key_name = var.key_name
    tags = var.tags_instance
}