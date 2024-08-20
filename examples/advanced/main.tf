##############################################################################
# Complete example
##############################################################################

module "resource_group" {
  source                       = "terraform-ibm-modules/resource-group/ibm"
  version                      = "1.1.6"
  resource_group_name          = var.resource_group == null ? "${var.prefix}-rg" : null
  existing_resource_group_name = var.resource_group
}

module "key_protect" {
  source            = "terraform-ibm-modules/key-protect/ibm"
  version           = "2.8.4"
  key_protect_name  = "${var.prefix}-key-protect"
  region            = var.region
  resource_group_id = module.resource_group.resource_group_id
  tags              = var.resource_tags
}

module "crn_parser_kp" {
  source = "../../modules/crn_parser"
  crn    = module.key_protect.key_protect_crn
}
