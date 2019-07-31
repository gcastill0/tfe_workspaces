variable "workspace_name" {
  description = "Desired name for workspace."
  default     = "test"
}

variable "vcs_id" {
  description = "VCS repo in the format org_name/repo_name."
  default     = "gcastill0/sandbox-aws"
}

variable "TFE_HOST" {
  description = "(Optional) The Terraform Enterprise hostname to connect to. Defaults to app.terraform.io. Can be overridden by setting the TFE_HOSTNAME environment variable."
}

variable "TFE_ORG_NAME" {
  description = "Desired name for workspace."
}

variable "TFE_TOKEN" {
  description = "(Optional) The token used to authenticate with Terraform Enterprise."
}

variable "VCS_OAUTH_TOKEN_ID" {
  description = "(Optional) The token used to authenticate with Terraform Enterprise."
}

variable "AWS_SECRET_ACCESS_KEY" {
  description = "Desired name for workspace."
}

variable "AWS_ACCESS_KEY_ID" {
  description = "Desired name for workspace."
}
