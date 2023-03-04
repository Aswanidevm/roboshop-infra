
module "ec2" {
  for_each = var.instances
  source = "./ec2"
  component = each.value["Name"]
  instance_type = each.value["type"]
}

module "route53" {
  for_each = var.instances
  source = "./route53"
  component = each.value["Name"]
  private_ip = module.ec2[each.value["Name"]].private_ip
}

