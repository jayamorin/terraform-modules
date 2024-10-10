resource "github_repository" "repository" {
  name                                    = var.name
  description                             = var.description
  homepage_url                            = var.homepage_url
  private                                 = var.private
  visibility                              = var.visibility
  has_issues                              = var.has_issues
  has_discussions                         = var.has_discussions
  has_projects                            = var.has_projects
  has_wiki                                = var.has_wiki
  is_template                             = var.is_template
  allow_merge_commit                      = var.allow_merge_commit
  allow_squash_merge                      = var.allow_squash_merge
  allow_rebase_merge                      = var.allow_rebase_merge
  allow_auto_merge                        = var.allow_auto_merge
  squash_merge_commit_title               = var.squash_merge_commit_title
  squash_merge_commit_message             = var.squash_merge_commit_message
  merge_commit_title                      = var.merge_commit_title
  merge_commit_message                    = var.merge_commit_message
  delete_branch_on_merge                  = var.delete_branch_on_merge
  web_commit_signoff_required             = var.web_commit_signoff_required
  has_downloads                           = var.has_downloads
  auto_init                               = var.auto_init
  gitignore_template                      = null
  license_template                        = null
  default_branch                          = var.default_branch
  archived                                = var.archived
  archive_on_destroy                      = var.archive_on_destroy
  topics                                  = var.topics
  vulnerability_alerts                    = var.vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.ignore_vulnerability_alerts_during_read
  allow_update_branch                     = var.allow_update_branch

  dynamic "pages" {
    for_each = var.pages.enable ? [1] : []

    content {
      source {
        branch   = var.pages.source.branch
        path     = var.pages.source.path
      }
      build_type = var.pages.build_type
      cname      = var.pages.cname
    }
  }

  dynamic "security_and_analysis" {
    for_each = var.security_and_analysis.enable ? [1] : []

    content {
      advanced_security {
        status = var.security_and_analysis.advanced_security.status
      }
      secret_scanning {
        status = var.security_and_analysis.secret_scanning.status
      }
      secret_scanning_push_protection {
        status = var.security_and_analysis.secret_scanning_push_protection.status
      }
    }
  }

  dynamic "template" {
    for_each = var.template.enable ? [1] : []

    content {
      owner                = var.template.owner
      repository           = var.template.repository
      include_all_branches = var.template.include_all_branches
    }
  }
}