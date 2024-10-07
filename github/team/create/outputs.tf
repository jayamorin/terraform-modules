output "id" {
  description = "The ID of the created team."
  value       = "${github_team.team.id}"
}

output "node_id" {
  description = "The Node ID of the created team."
  value       = "${github_team.team.node_id}"
}