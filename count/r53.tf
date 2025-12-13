resource "aws_route53_record" "roboshop" {
  zone_id = var.zone_id
  count = length(var.instances)
  name    = "${var.instances[count.index]}.${var.domain_name}" # mongodb.suneel.shop
  type    = "A"
  ttl     = 1
  records = [aws_instance.test[count.index].private_ip]
  allow_overwrite = true
}