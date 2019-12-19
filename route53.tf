resource "aws_route53_record" "www" { 
  zone_id = "Z2O0LFVAFO8Z56" 
  name    = "www.myawstestclass.com" 
  type    = "A" 
  ttl     = "" 
  records = [aws_instance.web.public_ip]
} 