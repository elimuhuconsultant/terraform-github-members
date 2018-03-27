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
      role     = "member"
    },
    {
      username = "user3"
      role     = "admin"
    },
  ]
}
