resource "tfe_organization" "tfe_org" {
  name  = "gcastill0"
  email = "gilberto@hashicorp.com"
}

resource "tfe_workspace" "workspace" {
  name         = "${workspace_name}"
  organization = "${tfe_organization.tfe_org.id}"
}

resource "tfe_variable" "credentials" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "my_value_name"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}
