module "dev_compute_1" {
  source          = "../modules/compute"
  environment     = module.dev_vpc_1.environment
  ami             = "ami-0e001c9271cf7f3b9"
  aws_region      = var.aws_region
  instance_type   = "t2.medium"
  key_name        = "LaptopKey"
  public-subnets  = module.dev_vpc_1.public_subnets_id
  private-subnets = module.dev_vpc_1.private_subnets_id
  sg_id           = module.dev_sg_1.sg_id
  vpc_name        = module.dev_vpc_1.vpc_name
}
