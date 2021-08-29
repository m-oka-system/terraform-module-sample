module "vpc" {
  source = "../../vpc"

  env  = var.env
  cidr = var.cidr
}

module "subnet" {
  source = "../../subnet"

  vpc_id = module.vpc.vpc_id
  cidr   = var.cidr
}
