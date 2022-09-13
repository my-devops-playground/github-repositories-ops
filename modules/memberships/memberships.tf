resource "github_team_repository" "add_repo_to_team" {
  for_each   = local.memberships.teams
  team_id    = each.key
  repository = local.repository
  permission = each.value
}