locals {
  github_url = "https://www.github.com/${var.github_user}.keys"

  # AWS SSH key pairs only contain a single key so extract one here
  github_ssh_key = "${element(split("\n", data.http.github_keys.body), var.github_key_index)}"

  # default to github_user unless a specific name is provided
  key_pair_name = "${var.aws_key_pair_name != "" ? var.aws_key_pair_name : var.github_user}"
}

data "http" "github_keys" {
  url = "${local.github_url}"
}

resource "aws_key_pair" "github_ssh_key" {
  key_name   = "${local.key_pair_name}"
  public_key = "${local.github_ssh_key}"
}
