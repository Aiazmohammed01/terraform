module "jenkins" {
  source            = "../modules/ec2"
  ami               = var.ami
  instance_type     = var.instance_type
  subnet_id         = var.subnet_id
  key_name          = var.key_name
  availability_zone = var.availability_zone
  #    user_data = var.user_data
  tags_instance       = var.tags_instance
  sg_name    = var.sg_name
  sg_ingress = var.sg_ingress
  sg_egress  = var.sg_egress
}
