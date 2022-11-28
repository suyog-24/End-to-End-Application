module "aws_vpc" {
  source     = "./modules/vpc"
  vpc_cidr   =  "10.0.0.0/16" 
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.aws_vpc.vpc_id
}

module "securitygroup" {
  source = "./modules/securitygroup"
  vpc_id = module.aws_vpc.vpc_id
}

module "rds" {
  source = "./modules/rds"
  vpcid = module.aws_vpc.vpc_id
  sgid = module.securitygroup.sgid
  privsubnetid = [module.subnet.privsubnet1,module.subnet.privsubnet2]
}

module "elb" {
  source = "./modules/elb"
  vpc_id = module.aws_vpc.vpc_id
  pubsubnet = [module.subnet.pubsubnet1,module.subnet.pubsubnet2]
}