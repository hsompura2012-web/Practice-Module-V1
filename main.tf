module "network" {
  source = "./network"
}

module "ec2" {
  source = "./ec2"
  ami                    = "var.emi"
  componentname          = "var.componentname"
  instance_type          = "var.instance_type"
  sec_id = module.network.Sec_Id
}

module "Route53" {
  source = "./Route53"
  componentname = "var.componentname"
  private_ip = module.ec2.ec2.private_ip
  zone_id = "var.zone_id"
}