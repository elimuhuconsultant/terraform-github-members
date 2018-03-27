# terraform-datadog-users

# https://www.terraform.io/docs/providers/datadog/r/user.html

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.1"
  value   = "${var.enabled}"
}

resource "github_membership" "this" {
  count    = "${module.enabled.value ? length(var.users) : 0}"
  username = "${lookup(var.users[count.index], "name")}"
  role     = "${lookup(var.users[count.index], "role", "member")}"

  # member or admin
}
