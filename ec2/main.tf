resource "aws_instance" "main" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = [ "var.sec_id" ]
  tags = {
    name = var.component_name
  }
}