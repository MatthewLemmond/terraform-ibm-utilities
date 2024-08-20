########################################################################################################################
# Input Variables
########################################################################################################################

variable "crn" {
  type        = string
  description = "The CRN to be parsed."

  validation {
    condition     = length(split(":", var.crn)) == 10
    error_message = "CRN is invalid, for details see https://cloud.ibm.com/docs/account?topic=account-crn."
  }
}
