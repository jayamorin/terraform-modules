resource "github_team_repository" "team_repository" {
  team_id    = var.team_id
  repository = var.repository
  permission = var.permission
}