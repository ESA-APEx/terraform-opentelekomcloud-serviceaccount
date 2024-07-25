variable "name" {
  type        = string
  description = "Group AND user name"
}

variable "role_ids" {
  type        = list(string)
  description = "Role IDs to assign"
}

variable "domain_id" {
  type        = string
  description = "ID of the domain we are in"
}

variable "ak_sk" {
  type        = bool
  default     = false
  description = "Whether to generate access key and secret key"
}

variable "password" {
  type        = bool
  default     = false
  description = "Whether to set a password for the account"
}
