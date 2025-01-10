resource "aws_security_group" "this" {
    name = var.sg_name
    vpc_id = data.aws_vpc.current.id
    dynamic "ingress" {
        for_each = var.sg_ingress
        content {
            from_port = ingress.value.from_port
            to_port = ingress.value.to_port
            cidr_blocks = ingress.value.cidr_blocks
            protocol = ingress.value.protocol
        }
    }
    dynamic "egress" {
        for_each = var.sg_egress
        content {
            from_port = egress.value.from_port
            to_port = egress.value.to_port
            cidr_blocks = egress.value.cidr_blocks
            protocol = egress.value.protocol
        }
    }
    tags = var.tags_instance
}