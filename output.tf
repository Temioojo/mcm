
output "vpc_id" {
  sensitive= false
  value= local.vpc_id
}
output "aws_public_subnet" {
 sensitive= false
  value= var.aws_public_subnet
}
output "aws_private_subnet" {
 sensitive= false
  value= var.aws_private_subnet
}
output "aws_instance" {
  sensitive = false
  value = var.aws_instance
}