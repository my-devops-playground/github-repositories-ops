data "github_repository" "repositories" {
  for_each  = local.configuration.repositories
  full_name = each.key
}