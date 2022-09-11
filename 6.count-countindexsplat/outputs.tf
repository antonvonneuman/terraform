# output "public_ip-1" {
#    value = aws_instance.myec2[0].public_ip
# }
# output "public_ip-2" {
#    value = aws_instance.myec2[1].public_ip
# }
#
# output "public_ip-3" {
#    value = aws_instance.myec2[2].public_ip
# }
output "public_ips" {
   value = aws_instance.myec2[*].public_ip
}
