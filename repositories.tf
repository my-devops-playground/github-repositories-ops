module "branch-protection" {
  source             = "./branch_protection"
  for_each           = local.configuration.repositories
  repository         = each.key
  branch             = each.value.branch-protection.branch
  review_count       = 1
  require_codeowners = true
}