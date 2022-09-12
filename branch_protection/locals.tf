locals {
  repository = var.repository

  branch_protection = {
    branch = var.branch
    pull_requests = {
      require_code_owner_reviews = var.require_codeowners
      require_review_count       = var.review_count
    }
  }

}