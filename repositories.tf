module "memberships" {
  source     = "./modules/memberships"
  for_each   = local.configuration.repositories
  repository = each.key
  teams      = each.value.memberships.teams
  people     = each.value.memberships.people
}

module "branch-protection" {
  depends_on   = [module.memberships]
  source       = "./modules/branch_protection"
  for_each     = local.configuration.repositories
  repository   = each.key
  branch       = each.value.branch-protection.branch
  review_count = each.value.branch-protection.pull-requests.review-count
  codeowners   = each.value.branch-protection.pull-requests.codeowners
}