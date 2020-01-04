resource "aws_route53_record" "www" { 
  zone_id = "Z2O0LFVAFO8Z56" 
  name    = "www.myawstestclass.com" 
  type    = "A" 
  ttl     = "60" 
  records = [aws_instance.web[0].public_ip]
} 