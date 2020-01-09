module "wordpress1" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = var.cidr

  azs             = [var.azs1, var.azs2, var.azs3]
  private_subnets = [var.priv_subnet1, var.priv_subnet2, var.priv_subnet3]
  public_subnets  = [var.pub_subnet1, var.pub_subnet2, var.pub_subnet3]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = var.Terraform
    Environment = var.Environment
  }
}