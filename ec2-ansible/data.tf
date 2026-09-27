# data "aws_route53_zone" "kisanseva" {
#   name = "kisanseva.shop"
# }

# # agent-1 → kisanseva.shop
# resource "aws_route53_record" "frontend" {
#   zone_id = data.aws_route53_zone.kisanseva.zone_id
#   name    = "kisanseva.shop"
#   type    = "A"
#   ttl     = 1

#   records = [
#     aws_instance.ec2[1].public_ip
#   ]
# }

# resource "aws_route53_record" "frontend_private" {
#   zone_id = data.aws_route53_zone.kisanseva.zone_id
#   name    = "frontend.kisanseva.shop"
#   type    = "A"
#   ttl     = 1

#   records = [
#     aws_instance.ec2[1].private_ip
#   ]
# }

# # agent-2 → backend.kisanseva.shop
# resource "aws_route53_record" "backend" {
#   zone_id = data.aws_route53_zone.kisanseva.zone_id
#   name    = "backend.kisanseva.shop"
#   type    = "A"
#   ttl     = 1

#   records = [
#     aws_instance.ec2[2].private_ip
#   ]
# }

# # agent-3 → mysql.kisanseva.shop
# resource "aws_route53_record" "mysql" {
#   zone_id = data.aws_route53_zone.kisanseva.zone_id
#   name    = "mysql.kisanseva.shop"
#   type    = "A"
#   ttl     = 1


#   records = [
#     aws_instance.ec2[3].private_ip
#   ]
# }