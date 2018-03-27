[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-github-members.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-github-members)

terraform-github-members
=======================

Terraform module for managing Github organization members

```hcl
module "github-members" {
  source  = "devops-workflow/members/github"
  version = "1.0.0"

  users = [
    {
      username = "user1"
    },
    {
      username = "user2"
      role     = "member"
    },
    {
      username = "user3"
      role     = "admin"
    },
  ]
}
```
