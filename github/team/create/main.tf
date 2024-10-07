resource "github_team" "team" {
  name                      = var.name
  description               = var.description
  privacy                   = var.privacy
  create_default_maintainer = var.create_default_maintainer
}

