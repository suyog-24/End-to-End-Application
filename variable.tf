# #VPC Variables
# variable "cidr" {
#   type    = string
#   default = "10.0.0.0/16"
# }

# #SUBNET VARIABLE
# variable "cidr1" {
#   type = string
#   default = ""
# }

# variable "websecuritygroup" {
#   type    = string
#   default = "websecuritygroup"
# }

variable "privatesubnet1" {
  type    = string
  default = "privatesubnet1"
}


variable "privatesubnet2" {
  type    = string
  default = "privatesubnet2"
}
# variable "database_security" {
#   type    = string
#   default = "db-sg"
# }

# variable "cidr_block" {
#   type    = string
#   default = "10.0.0.0/16"
# }

# #Public Subnet1  Variables
# variable "cidr_block1" {
#   type    = string
#   default = "10.0.1.0/24"
# }

# variable "availability_zone1" {
#   description = "az"
#   type        = string
#   default     = "us-west-2a"
# }

# #Public Subnet2  Variables
# variable "cidr_block2" {
#   type    = string
#   default = "10.0.2.0/24"
# }

# variable "availability_zone2" {
#   description = "az"
#   type        = string
#   default     = "us-west-2b"
# }

# #Database Subnet1  Variables
# variable "cidr_block3" {
#   type    = string
#   default = "10.0.3.0/24"
# }

# #Databse Subnet2  Variables
# variable "cidr_block4" {
#   type    = string
#   default = "10.0.4.0/24"
# }


# #Route Variables Public
# variable "route_cidr1" {
#   type    = string
#   default = "0.0.0.0/0"
# }
