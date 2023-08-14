data "aws_ssm_parameter" "ami_instance" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "instance" {
  ami           = data.aws_ssm_parameter.ami_instance.value
  instance_type = "t2.micro"
} 