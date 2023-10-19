variable "vdc_org_name" {
  description = "The name of the organization to use."
  type        = string
}

variable "alias" {
  description = "Alias (name) of certificate."
  type        = string
}

variable "description" {
  description = "Description of media file."
  type        = string
  default     = null
}

variable "certificate" {
  description = "Content of Certificate."
  type        = string
}

variable "private_key" {
  description = "Content of private key."
  type        = string
  default     = null
}

variable "private_key_passphrase" {
  description = "private key pass phrase."
  type        = string
  default     = null
  sensitive   = true
}
