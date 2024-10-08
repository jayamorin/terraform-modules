resource "github_membership" "membership" {
  username             = var.username
  role                 = var.role
  downgrade_on_destroy = var.downgrade_on_destroy
}