resource "aws_route53_record" "main" {
  zone_id = var.zone_id
  name    = "${var.componentname}-dev"
  type    = "A"
  ttl     = 50
  records = [var.private_ip]
}


