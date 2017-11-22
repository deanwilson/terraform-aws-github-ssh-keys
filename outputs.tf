output "aws_key_pair_name" {
  value = "${aws_key_pair.github_ssh_key.key_name}"
  description = "The AWS key pair name this module invocation created."
}
