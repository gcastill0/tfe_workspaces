# variable "workspace_repo" {
#   description = "VCS repo in the format org_name/repo_name."
# }

variable "workspace_name" {
  description = "Desired name for workspace."
  default     = "test"
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Desired name for workspace."
}

variable "tfe_host" {
  description = "(Optional) The Terraform Enterprise hostname to connect to. Defaults to app.terraform.io. Can be overridden by setting the TFE_HOSTNAME environment variable."
}

variable "tfe_token" {
  description = "(Optional) The token used to authenticate with Terraform Enterprise."
}
