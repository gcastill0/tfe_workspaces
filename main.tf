provider "tfe" {
  hostname = "${var.tfe_host}"
  token    = "${var.tfe_token}"
}

resource "tfe_workspace" "workspace" {
  name         = "${var.workspace_name}"
  organization = "gcastill0"
}

resource "tfe_variable" "credentials" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "my_value_name"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}
