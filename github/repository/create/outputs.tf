output "full_name" {
  description = "A string of the form orgname/reponame."
  value       = github_repository.repository.full_name
}

output "html_url" {
  description = "URL to the repository on the web."
  value       = github_repository.repository.html_url
}

output "ssh_clone_url" {
  description = "URL that can be provided to git clone to clone the repository via SSH."
  value       = github_repository.repository.ssh_clone_url
}

output "http_clone_url" {
  description = <<-EOT
    URL that can be provided to git clone to clone the repository via HTTPS.
    EOT
  value       = github_repository.repository.http_clone_url
}

output "git_clone_url" {
  description = <<-EOT
    URL that can be provided to git clone to clone the repository anonymously via the
    git protocol.
    EOT
  value       = github_repository.repository.git_clone_url
}

output "svn_url" {
  description = <<-EOT
    URL that can be provided to svn checkout to check out the repository via GitHub's
    Subversion protocol emulation.
    EOT
  value       = github_repository.repository.svn_url
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API"
  value       = github_repository.repository.node_id
}

output "repo_id" {
  description = " - GitHub ID for the repository"
  value       = github_repository.repository.repo_id
}

output "primary_language" {
  description = " - The primary language used in the repository."
  value       = github_repository.repository.primary_language
}

output "pages" {
  description = <<-EOT
    The block consisting of the repository's GitHub Pages configuration with the
    following additional attributes:

      custom_404 - Whether the rendered GitHub Pages site has a custom 404 page.

      html_url - The absolute URL (including scheme) of the rendered GitHub Pages site
      e.g. https://username.github.io.

      status - The GitHub Pages site's build status e.g. building or built.
    EOT
  value = {
    custom_404 = github_repository.repository.pages[0].custom_404
    html_url   = github_repository.repository.pages[0].html_url
    status     = github_repository.repository.pages[0].status
  }
}