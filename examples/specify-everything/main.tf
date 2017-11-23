module "github-ssh-keys" {
  source = "deanwilson/github-ssh-keys/aws"

  # fetch the ssh key from this user name
  github_user = "deanwilson"

  # create the key with a specific name in AWS
  aws_key_pair_name = "deanwilson-from-github"

  # use the second key in the aws_key_pair resource
  github_key_index = "1"
}
