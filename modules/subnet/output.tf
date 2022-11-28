output "vpcid" {
  value = var.vpc_id
}

output "pubsubnet1" {
  value = aws_subnet.publicsubnet1.id
}

output "pubsubnet2" {
  value = aws_subnet.publicsubnet2.id
}


output "privsubnet1" {
  value = aws_subnet.privatesubnet1.id
}

output "privsubnet2" {
  value = aws_subnet.privatesubnet2.id
}

output "pubsunet" {
  value = aws_subnet.publicsubnet1
}





# output "publicsubnet1" {
#   value = aws_subnet.publicsubnet1.id
# }

# output "publicsubnet2" {
#   value = aws_subnet.publicsubnet2.id
# }

