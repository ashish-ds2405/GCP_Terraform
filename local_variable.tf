locals {
  owner = var.business_unit
  environemt = var.environemt
  resource_name_prefix = "${var.business_unit}-${var.environemt}"
  common_tags = {
      owner = local.owner
      environemt = local.environemt
  }
}