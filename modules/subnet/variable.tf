variable "vpc_id" {}

#Public Subnet1  Variables
variable "cidrpub1" {
  type = string
  default = "10.0.1.0/24"
}

#Public Subnet2  Variables
variable "cidrpub2" {
  type = string
  default = "10.0.2.0/24"
}


#Public Route Table Variable
variable "public-rt-cidr" {
  type = string
  default = "0.0.0.0/0"
}
 
#-----------------------------------------------------


#Database Subnet1  Variables
variable "cidrpriv1" {
  type = string
  default = "10.0.3.0/24"
}

#Databse Subnet2  Variables
variable "cidrpriv2" {
  type = string
  default = "10.0.4.0/24"
}

# #Private Route Table Variable
# variable "priv-rt-cidr" {
#   type = string
#   default = ""
# }


