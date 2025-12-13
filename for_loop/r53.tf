resource "aws_route53_record" "roboshop" {
  zone_id = var.zone_id
  #count = length(var.instances)
  for_each = aws_instance.test
  name    = "${each.key}.${var.domain_name}" # mongodb.suneel.shop
  type    = "A"
  ttl     = 1
  records = [each.value.private_ip]
  allow_overwrite = true
}