module "disabled" {
  source  = "../../"
  enabled = false
  users   = []

  providers = {
    github = "github.devops"
  }
}
