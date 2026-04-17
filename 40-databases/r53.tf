 resource "aws_route53_record" "mongod" {
  zone_id = var.zone_id
  name    = "mongod-${var.environment}.${var.domain_name}"
  type    = "A"
  ttl     = "1"
  records = [aws_instance.mongod.private_ip]
  allow_overwrite = true
}