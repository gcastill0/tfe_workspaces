provider "tfe" {
  hostname = "${var.TFE_HOST}"
  token    = "${var.TFE_TOKEN}"
}

resource "tfe_workspace" "workspace" {
  name         = "${var.workspace_name}"
  organization = "gcastill0"
}

resource "tfe_variable" "aws_secret_access_key" {
  key          = "AWS_SECRET_ACCESS_KEY"
  value        = "${var.AWS_SECRET_ACCESS_KEY}"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}

resource "tfe_variable" "aws_access_key_id" {
  key          = "AWS_ACCESS_KEY_ID"
  value        = "${var.AWS_ACCESS_KEY_ID}"
  category     = "env"
  workspace_id = "${tfe_workspace.workspace.id}"
}
