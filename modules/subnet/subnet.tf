#PUBLIC SUBNET
resource "aws_subnet" "publicsubnet1" {
  vpc_id                  = var.vpc_id   #VPC ID
  cidr_block              = var.cidrpub1 #CIDR BLOCK 
  map_public_ip_on_launch = true         #ASSIGN IP ADDRESS AUTOMATICALLY
  availability_zone       = "us-east-1a" #AZ

  tags = {
    Name = "publicsubnet1"
  }
}

resource "aws_subnet" "publicsubnet2" {
  vpc_id                  = var.vpc_id   #VPC ID
  cidr_block              = var.cidrpub2 #CIDR BLOCK 
  map_public_ip_on_launch = true         #ASSIGN IP ADDRESS AUTOMATICALLY
  availability_zone       = "us-east-1b" #AZ 

  tags = {
    Name = "publicsubnet2"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id
}


#Public Route Table
resource "aws_route_table" "pubroutetable" {
  vpc_id = var.vpc_id

  route {
    cidr_block = var.public-rt-cidr
    gateway_id = aws_internet_gateway.igw.id

  }
}

# Associating Route Table Public (WEB)
resource "aws_route_table_association" "pubroute-1" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.pubroutetable.id
}

# Associating Route Table Public (WEB)
resource "aws_route_table_association" "pubroute-2" {
  subnet_id      = aws_subnet.publicsubnet2.id
  route_table_id = aws_route_table.pubroutetable.id
}


#Private Route Table
resource "aws_subnet" "privatesubnet1" {
  vpc_id            = var.vpc_id    #VPC ID
  cidr_block        = var.cidrpriv1 #CIDR BLOCK 
  availability_zone = "us-east-1a"  #AZ

  tags = {
    Name = "privatesubnet1"
  }
}

resource "aws_subnet" "privatesubnet2" {
  vpc_id            = var.vpc_id    #VPC ID
  cidr_block        = var.cidrpriv2 #CIDR BLOCK 
  availability_zone = "us-east-1b"  #AZ 

  tags = {
    Name = "privatesubnet2"
  }
}

# #Public Route Table
# resource "aws_route_table" "privroutetable" {
#   vpc_id = var.vpc_id

#   route {
#     cidr_block = var.priv-rt-cidr
#   }
# }

# # Associating Route Table Private (DB)
# resource "aws_route_table_association" "privroute-1" {
#   subnet_id      = aws_subnet.privatesubnet1.id
#   route_table_id = aws_route_table.privroutetable.id
# }

# # Associating Route Table Private (DB)
# resource "aws_route_table_association" "privroute-2" {
#   subnet_id      = aws_subnet.privatesubnet2.id
#   route_table_id = aws_route_table.privroutetable.id
# }
