data "github_repository" "repositories" {
  for_each  = var.repositories
  full_name = each.key
}