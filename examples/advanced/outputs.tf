##############################################################################
# Outputs
##############################################################################

output "resource_group" {
  value       = module.resource_group
  description = "Resource Group details"
}

output "key_protect" {
  value       = module.key_protect
  description = "Key Protect Instance details"
}

output "crn_parser_kp" {
  value       = module.crn_parser_kp
  description = "CRN Parser outputs"
}
