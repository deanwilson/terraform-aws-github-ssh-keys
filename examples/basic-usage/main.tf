module "github-ssh-keys" {
  source = "deanwilson/github-ssh-keys/aws"

  # fetch the ssh key from this user name
  github_user = "deanwilson"
}
