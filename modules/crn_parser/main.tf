/********************************************************************
This file is used to implement the ROOT module.
*********************************************************************/

locals {
  split_crn        = split(":", var.crn)
  ctype            = local.split_crn[3]
  service_name     = local.split_crn[4]
  region           = local.split_crn[5]
  scope            = local.split_crn[6]
  service_instance = local.split_crn[7]
  resource_type    = local.split_crn[8]
  resource         = local.split_crn[9]
}
