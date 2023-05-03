resource "github_repository" "terraform_created_repo" {
    name = var.app_name
    description = var.app_description
    auto_init = true

    template {
      owner                = "vaibhav-prabhu"
      repository           = "Magento2template"
    }

}

resource "github_branch" "stage" {
  repository = github_repository.terraform_created_repo.name
  branch = "stage"
}

resource "github_branch" "develop" {
  repository = github_repository.terraform_created_repo.name
  branch = "develop"
}

resource "github_branch_protection" "branch-enterprise" {
    repository_id = github_repository.terraform_created_repo.node_id

    pattern = "stage"
    enforce_admins = true

    required_pull_request_reviews {
      dismiss_stale_reviews = true
      restrict_dismissals = true
      require_code_owner_reviews = true
      required_approving_review_count = 3
    }
}