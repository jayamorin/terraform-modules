variable "name" {
  description = "The name of the repository."
  type        = string
  nullable    = false
}

variable "description" {
  description = "A description of the repository."
  type        = string
}

variable "homepage_url" {
  description = "URL of a page describing the project."
  type        = string
}

variable "private" {
  description = <<-EOT
    Set to true to create a private repository.
    Repositories are created as public (e.g. open source) by default.
    EOT
  type        = bool
  default     = false
}

variable "visibility" {
  description =  <<-EOT
    Can be public or private. The visibility parameter overrides the private parameter.
    EOT
  type        = string
  default     = "private"
  validation {
    condition     = contains(["public", "private"], var.visibility)
    error_message = "Argument 'visibility' must one of 'public', or 'private'."
  }
}

variable "has_issues" {
  description = "Set to true to enable the GitHub Issues features on the repository."
  type        = bool
}

variable "has_discussions" {
  description = "Set to true to enable GitHub Discussions on the repository."
  type        = bool
  default     = false
}

variable "has_projects" {
  description = <<-EOT
    Set to true to enable the GitHub Projects features on the repository. Per the GitHub
    documentation when in an organization that has disabled repository projects it will
    default to false and will otherwise default to true. If you specify true when it has
    been disabled it will return an error.
    EOT
  type        = bool
}

variable "has_wiki" {
  description = "Set to true to enable the GitHub Wiki features on the repository."
  type        = bool
}

variable "is_template" {
  description = "Set to true to tell GitHub that this is a template repository."
  type        = bool
}

variable "allow_merge_commit" {
  description = "Set to false to disable merge commits on the repository."
  type        = bool
}

variable "allow_squash_merge" {
  description = "Set to false to disable squash merges on the repository."
  type        = bool
}

variable "allow_rebase_merge" {
  description = "Set to false to disable rebase merges on the repository."
  type        = bool
}

variable "allow_auto_merge" {
  description = "Set to true to allow auto-merging pull requests on the repository."
  type        = bool
  default     = false
}

variable "squash_merge_commit_title" {
  description     = <<-EOT
    Can be PR_TITLE or COMMIT_OR_PR_TITLE for a default squash merge commit title.
    Applicable only if allow_squash_merge is true.
    EOT
  type            = string
  validation {
    condition     = var.allow_squash_merge == true && contains(["PR_TITLE", "COMMIT_OR_PR_TITLE"], var.squash_merge_commit_title)
    error_message = "Argument 'squash_merge_commit_title' must one of 'PR_TITLE', or 'COMMIT_OR_PR_TITLE'."
  }
}

variable "squash_merge_commit_message" {
  description     = <<-EOT
    Can be PR_BODY, COMMIT_MESSAGES, or BLANK for a default squash merge commit message.
    Applicable only if allow_squash_merge is true.
    EOT
  type            = string
  validation {
    condition     = var.allow_squash_merge == true && contains(["PR_BODY", "COMMIT_MESSAGES", "BLANK"], var.squash_merge_commit_message)
    error_message = "Argument 'squash_merge_commit_message' must one of 'PR_BODY', 'COMMIT_MESSAGES', or 'BLANK'."
  }
}

variable "merge_commit_title" {
  description     = <<-EOT
    Can be PR_TITLE or MERGE_MESSAGE for a default merge commit title.
    Applicable only if allow_merge_commit is true.
    EOT
  type            = string
  validation {
    condition     = var.allow_merge_commit == true && contains(["PR_TITLE", "MERGE_MESSAGE"], var.merge_commit_title)
    error_message = "Argument 'merge_commit_title' must one of 'PR_TITLE', or 'MERGE_MESSAGE'."
  }
}

variable "merge_commit_message" {
  description     = <<-EOT
    Can be PR_BODY, PR_TITLE, or BLANK for a default merge commit message. Applicable
    only if allow_merge_commit is true.
    EOT
  type            = string
  validation {
    condition     = var.allow_merge_commit == true && contains(["PR_BODY", "PR_TITLE", "BLANK"], var.merge_commit_message)
    error_message = "Argument 'merge_commit_message' must one of 'PR_BODY', 'PR_TITLE', or 'BLANK'."
  }
}

variable "delete_branch_on_merge" {
  description = <<-EOT
    Automatically delete head branch after a pull request is merged. Defaults to false.
    EOT
  type        = bool
  default     = false
}

variable "web_commit_signoff_required" {
  description = <<-EOT
    Require contributors to sign off on web-based commits. See more here. Defaults to
    false.
    EOT
  type        = bool
  default     = false
}

variable "has_downloads" {
  description = <<-EOT
    Set to true to enable the (deprecated) downloads features on the repository.
    EOT
  type        = bool
}

variable "auto_init" {
  description = "Set to true to produce an initial commit in the repository."
  type        = bool
}

variable "gitignore_template" {
  description     = <<-EOT
    Use the name of the template without the extension. For example, "Haskell".
    EOT
  type            = string
  validation {
    condition     = contains(["Actionscript", "Ada", "Agda", "AL", "Android", "AppceleratorTitanium", "AppEngine", "ArchLinuxPackages", "Autotools", "Ballerina", "CakePHP", "CFWheels", "C++", "C", "ChefCookbook", "Clojure", "CMake", "CodeIgniter", "CommonLisp", "Composer", "Concrete5", "Coq", "CraftCMS", "CUDA", "Dart", "Delphi", "D", "DM", "Drupal", "Eagle", "Elisp", "Elixir", "Elm", "EPiServer", "Erlang", "ExpressionEngine", "ExtJs", "Fancy", "Finale", "FlaxEngine", "ForceDotCom", "Fortran", "FuelPHP", "Gcov", "GitBook", "GitHubPages", "Godot", "Go", "Gradle", "Grails", "GWT", "Haskell", "IAR", "Idris", "IGORPro", "Java", "JBoss", "Jekyll", "JENKINS_HOME", "Joomla", "Julia", "KiCad", "Kohana", "Kotlin", "LabVIEW", "Laravel", "Leiningen", "LemonStand", "Lilypond", "Lithium", "Lua", "Magento", "Maven", "Mercury", "MetaProgrammingSystem", "Nanoc", "Nim", "Node", "Objective-C", "OCaml", "Opa", "OpenCart", "OracleForms", "Packer", "Perl", "Phalcon", "PlayFramework", "Plone", "Prestashop", "Processing", "PureScript", "Python", "Qooxdoo", "Qt", "Racket", "Rails", "Raku", "ReScript", "R", "RhodesRhomobile", "ROS", "Ruby", "Rust", "Sass", "Scala", "Scheme", "SCons", "Scrivener", "Sdcc", "SeamGen", "SketchUp", "Smalltalk", "Stella", "SugarCRM", "Swift", "Symfony", "SymphonyCMS", "Terraform", "TeX", "Textpattern", "TurboGears2", "TwinCAT3", "Typo3", "Unity", "UnrealEngine", "VisualStudio", "VVVV", "Waf", "WordPress", "Xojo", "Yeoman", "Yii", "ZendFramework", "Zephir", "Zig"],var.gitignore_template)
    error_message = "Argument 'gitignore_template' must one of 'Actionscript', 'Ada', 'Agda', 'AL', 'Android', 'AppceleratorTitanium', 'AppEngine', 'ArchLinuxPackages', 'Autotools', 'Ballerina', 'CakePHP', 'CFWheels', 'C++', 'C', 'ChefCookbook', 'Clojure', 'CMake', 'CodeIgniter', 'CommonLisp', 'Composer', 'Concrete5', 'Coq', 'CraftCMS', 'CUDA', 'Dart', 'Delphi', 'D', 'DM', 'Drupal', 'Eagle', 'Elisp', 'Elixir', 'Elm', 'EPiServer', 'Erlang', 'ExpressionEngine', 'ExtJs', 'Fancy', 'Finale', 'FlaxEngine', 'ForceDotCom', 'Fortran', 'FuelPHP', 'Gcov', 'GitBook', 'GitHubPages', 'Godot', 'Go', 'Gradle', 'Grails', 'GWT', 'Haskell', 'IAR', 'Idris', 'IGORPro', 'Java', 'JBoss', 'Jekyll', 'JENKINS_HOME', 'Joomla', 'Julia', 'KiCad', 'Kohana', 'Kotlin', 'LabVIEW', 'Laravel', 'Leiningen', 'LemonStand', 'Lilypond', 'Lithium', 'Lua', 'Magento', 'Maven', 'Mercury', 'MetaProgrammingSystem', 'Nanoc', 'Nim', 'Node', 'Objective-C', 'OCaml', 'Opa', 'OpenCart', 'OracleForms', 'Packer', 'Perl', 'Phalcon', 'PlayFramework', 'Plone', 'Prestashop', 'Processing', 'PureScript', 'Python', 'Qooxdoo', 'Qt', 'Racket', 'Rails', 'Raku', 'ReScript', 'R', 'RhodesRhomobile', 'ROS', 'Ruby', 'Rust', 'Sass', 'Scala', 'Scheme', 'SCons', 'Scrivener', 'Sdcc', 'SeamGen', 'SketchUp', 'Smalltalk', 'Stella', 'SugarCRM', 'Swift', 'Symfony', 'SymphonyCMS', 'Terraform', 'TeX', 'Textpattern', 'TurboGears2', 'TwinCAT3', 'Typo3', 'Unity', 'UnrealEngine', 'VisualStudio', 'VVVV', 'Waf', 'WordPress', 'Xojo', 'Yeoman', 'Yii', 'ZendFramework', 'Zephir', or 'Zig'"
  }
}

variable "license_template" {
  description     = <<-EOT
    Use the name of the template without the extension. For example, "mit" or "mpl-2.0".
    EOT
  type            = string
  validation {
    condition     = contains(["agpl3-header", "agpl3", "apache-header", "apache", "bsd2", "bsd3", "cc0-header", "cc0", "cc_by-header", "cc_by_nc-header", "cc_by_nc_nd-header", "cc_by_nc_nd", "cc_by_nc_sa-header", "cc_by_nc_sa", "cc_by_nc", "cc_by_nd-header", "cc_by_nd", "cc_by_sa-header", "cc_by_sa", "cc_by", "cddl", "epl", "gpl2", "gpl3-header", "gpl3", "isc", "lgpl", "mit", "mpl-header", "mpl", "unlicense", "wtfpl-header", "wtfpl-header-warranty", "wtfpl", "x11", "zlib"], var.license_template)
    error_message = "Argument 'license_template' must one of 'agpl3-header', 'agpl3', 'apache-header', 'apache', 'bsd2', 'bsd3', 'cc0-header', 'cc0', 'cc_by-header', 'cc_by_nc-header', 'cc_by_nc_nd-header', 'cc_by_nc_nd', 'cc_by_nc_sa-header', 'cc_by_nc_sa', 'cc_by_nc', 'cc_by_nd-header', 'cc_by_nd', 'cc_by_sa-header', 'cc_by_sa', 'cc_by', 'cddl', 'epl', 'gpl2', 'gpl3-header', 'gpl3', 'isc', 'lgpl', 'mit', 'mpl-header', 'mpl', 'unlicense', 'wtfpl-header', 'wtfpl-header-warranty', 'wtfpl', 'x11', or 'zlib'."
  }
}

variable "default_branch" {
  description = <<-EOT
    (Deprecated: Use github_branch_default resource instead) The name of the default
    branch of the repository. NOTE: This can only be set after a repository has already
    been created, and after a correct reference has been created for the target branch
    inside the repository. This means a user will have to omit this parameter from the
    initial repository creation and create the target branch inside of the repository
    prior to setting this attribute.
    EOT
  type        = string
}

variable "archived" {
  description = <<-EOT
    Specifies if the repository should be archived. NOTE Currently, the API does not
    support unarchiving.
    EOT
  type        = bool
  default     = false
}

variable "archive_on_destroy" {
  description = "Set to true to archive the repository instead of deleting on destroy."
  type        = bool
}

variable "pages" {
  description = <<-EOT
    The repository's GitHub Pages configuration. See GitHub Pages Configuration below
    for details.

    GitHub Pages Configuration

      The pages block supports the following:

        source - (Optional) The source branch and directory for the rendered Pages site.
        See GitHub Pages Source below for details.

        build_type - (Optional) The type of GitHub Pages site to build. Can be legacy or
        workflow. If you use legacy as build type you need to set the option source.

        cname - (Optional) The custom domain for the repository. This can only be set
                after the repository has been created.

    GitHub Pages Source

      The source block supports the following:

        branch - (Required) The repository branch used to publish the site's source
        files. (i.e. main or gh-pages).

        path - (Optional) The repository directory from which the site publishes
        (Default: /).
    EOT
  type        =  any
  default     = {}
}

variable "security_and_analysis" {
  description = <<-EOT
    The repository's security and analysis configuration. See Security and Analysis
    Configuration below for details.

    Security and Analysis Configuration

      The security_and_analysis block supports the following:

        advanced_security - (Optional) The advanced security configuration for the
        repository. See Advanced Security Configuration below for details. If a
        repository's visibility is public, advanced security is always enabled and
        cannot be changed, so this setting cannot be supplied.

        secret_scanning - (Optional) The secret scanning configuration for the
        repository. See Secret Scanning Configuration below for details.

        secret_scanning_push_protection - (Optional) The secret scanning push protection
        configuration for the repository. See Secret Scanning Push Protection
        Configuration below for details.

    Advanced Security Configuration

      The advanced_security block supports the following:

        status - (Required) Set to enabled to enable advanced security features on the
        repository. Can be enabled or disabled.

    Secret Scanning Configuration

      status - (Required) Set to enabled to enable secret scanning on the repository.
      Can be enabled or disabled. If set to enabled, the repository's visibility must be
      public or security_and_analysis[0].advanced_security[0].status must also be set to
      enabled.

    Secret Scanning Push Protection Configuration

      status - (Required) Set to enabled to enable secret scanning push protection on
      the repository. Can be enabled or disabled. If set to enabled, the repository's
      visibility must be public or security_and_analysis[0].advanced_security[0].status
      must also be set to enabled.
    EOT
  type        =  any
  default     = {}
}

variable "topics" {
  description = <<-EOT
    The list of topics of the repository.

    **Note**

      This attribute is not compatible with the github_repository_topics resource. Use
      one of them. github_repository_topics is only meant to be used if the repository
      itself is not handled via terraform, for example if it's only read as a datasource
      (see issue #1845).
    EOT
  type        = list(string)
  default     = []
}

variable "template" {
  description = <<-EOT
    Use a template repository to create this resource. See Template Repositories below
    for details.

    Template Repositories

      template supports the following arguments:

        owner - The GitHub organization or user the template repository is owned by.

        repository - The name of the template repository.

        include_all_branches - Whether the new repository should include all the
        branches from the template repository (defaults to false, which includes only
        the default branch from the template).
    EOT
  type        =  any
  default     = {}
}

variable "vulnerability_alerts" {
  description = <<-EOT
    Set to true to enable security alerts for vulnerable dependencies. Enabling requires
    alerts to be enabled on the owner level. (Note for importing: GitHub enables the
    alerts on public repos but disables them on private repos by default.) See GitHub
    Documentation for details. Note that vulnerability alerts have not been successfully
    tested on any GitHub Enterprise instance and may be unavailable in those settings.
    EOT
  type        = bool
}

variable "ignore_vulnerability_alerts_during_read" {
  description = <<-EOT
    Set to true to not call the vulnerability alerts endpoint so the resource can also
    be used without admin permissions during read.
    EOT
  type        = bool
}

variable "allow_update_branch" {
  description = "Set to true to always suggest updating pull request branches."
  type        = bool
  default     = true
}