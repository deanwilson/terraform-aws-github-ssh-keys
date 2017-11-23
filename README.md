# terraform-aws-github-ssh-keys

Use your GitHub SSH public key as an AWS EC2 key pair.

Before you can log in to an AWS EC2 instance you'll need to create an assign
an SSH key pair. This module allows you to use your existing GitHub registered
public key instead of creating an AWS specific one.

## Usage

The modules basic usage only requires that you specify the source, as usual,
and the GitHub user name from which it should fetch ssh keys.

```
module "github-ssh-keys" {
  source = "deanwilson/github-ssh-keys/aws"

  # fetch the ssh key from this user name
  github_user = "deanwilson"
}
```

There are a few more parameters you can specify in the module. They allow
customisation of the key pair name to create in AWS and which of the GitHub ssh
keys to use. Unfortunately this has to be accessed by index, not by a more
memorable name due to how the upstream handles keys.

```
module "github-ssh-keys" {
  source = "deanwilson/github-ssh-keys/aws"

  # fetch the ssh key from this user name
  github_user = "deanwilson"

  # create the key with a specific name in AWS
  aws_key_pair_name = "deanwilson-from-github"

  # use the second key in the aws_key_pair resource
  github_key_index = "1"
}
```

### Author

[Dean Wilson](https://www.unixdaemon.net)

### License

This module is released under the Mozilla Public License 2.0, the
same license as Terraform itself.
