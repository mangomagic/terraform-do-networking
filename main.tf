module "do" {
  source    = "git@github.com:mangomagic/terraform-do-settings.git?ref=0.0.1"
  workspace = terraform.workspace
}

resource "digitalocean_vpc" "this" {
  for_each = module.do.vpcs
  name     = each.key
  region   = each.value.region
  ip_range = each.value.ip_range
}
