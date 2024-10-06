resource "github_organization_settings" "settings" {
    name = var.name
    billing_email = var.billing_email
    email = var.email
    description = var.description
    blog = var.blog
    twitter_username = var.twitter_username
    location = var.location
    default_repository_permission = var.default_repository_permission
    has_organization_projects = var.has_organization_projects
    has_repository_projects = var.has_repository_projects
    members_can_create_repositories = var.members_can_create_repositories
    members_can_create_public_repositories = var.members_can_create_public_repositories
    members_can_create_private_repositories = var.members_can_create_private_repositories
    members_can_create_pages = var.members_can_create_pages
    members_can_create_public_pages = var.members_can_create_public_pages
    members_can_create_private_pages = var.members_can_create_private_pages
    members_can_fork_private_repositories = var.members_can_fork_private_repositories
    web_commit_signoff_required = var.web_commit_signoff_required
    advanced_security_enabled_for_new_repositories = var.advanced_security_enabled_for_new_repositories
    dependabot_alerts_enabled_for_new_repositories =  var.dependabot_alerts_enabled_for_new_repositories
    dependabot_security_updates_enabled_for_new_repositories = var.dependabot_security_updates_enabled_for_new_repositories
    dependency_graph_enabled_for_new_repositories = var.dependency_graph_enabled_for_new_repositories
    secret_scanning_enabled_for_new_repositories = var.secret_scanning_enabled_for_new_repositories
    secret_scanning_push_protection_enabled_for_new_repositories = var.secret_scanning_push_protection_enabled_for_new_repositories
}