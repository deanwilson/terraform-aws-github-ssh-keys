variable "github_user" {
  type = "string"
  description = "GitHub user name"
}

variable "github_key_index" {
  type = "string"
  default = 0
  description = "Index of the key to use. Starts from 0"
}

variable "aws_key_pair_name" {
  type = "string"
  description = "AWS key pair name to create. Defaults to github_user"
  default = ""
}
