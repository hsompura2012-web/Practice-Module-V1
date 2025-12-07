module "network" {
  source = "./network"
}

module "ec2" {
  source = "./ec2"
  ami                    = "var.ami"
  instance_type          = "var.instance_type"
  component_name          = "var.component_name"
  sec_id = module.network.Sec_Id
}

module "Route53" {
  source = "./Route53"
  component_name = "var.component_name"
  private_ip = module.ec2.ec2.private_ip
  zone_id = "var.zone_id"
}