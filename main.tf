# terraform-datadog-users

# https://www.terraform.io/docs/providers/datadog/r/user.html

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.2"
  value   = "${var.enabled}"
}

resource "github_membership" "this" {
  count    = "${module.enabled.value ? length(var.users) : 0}"
  username = "${lookup(var.users[count.index], "username")}"
  role     = "${lookup(var.users[count.index], "role-org", "member")}"

  # member or admin
}
