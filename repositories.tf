module "branch-protection" {
  source       = "./modules/branch_protection"
  for_each     = local.configuration.repositories
  repository   = each.key
  branch       = each.value.branch-protection.branch
  review_count = each.value.branch-protection.pull-requests.review-count
  codeowners   = each.value.branch-protection.pull-requests.codeowners
}