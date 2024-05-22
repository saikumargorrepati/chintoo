module "dev_vpc_1" {
  source             = "../modules/networking"
  vpc_cidr_block     = "10.90.0.0/16"
  vpc_name           = "dev_vpc_1"
  environment        = "Development"
  public_cidr_block  = "10.90.1.0/24"
  private_cidr_block = "10.90.10.0/24"
  azs                = ["us-east-1a", "us-east-1b"]
  natgw_id           = "module.dev_natgw_1.natgw_id"
  region             = "var.aws_region"
}

# module "dev_natgw_1" {
#   source            = "../modules/nat"
#   public_subnet_id  = module.dev_vpc_1.public_subnets_id_1
#   private_subnet_id = module.dev_vpc_1.private_subnets_id_1
#   vpc_name          = module.dev_vpc_1.vpc_name
# }
