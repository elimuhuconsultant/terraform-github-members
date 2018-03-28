module "members" {
  source = "../../"

  providers = {
    github = "github.devops"
  }

  users = [
    {
      username = "user1"
    },
    {
      username = "user2"
      role-org = "member"
    },
    {
      username = "user3"
      role-org = "admin"
    },
  ]
}
