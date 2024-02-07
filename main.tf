locals {
  github_usernames = flatten(concat(
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "team-se" ],
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "apac-se" ]
  ))
}

# Lookup our GitHub org for teams and memberships
data "github_organization_teams" "team_se" {
  root_teams_only = true
  summary_only = true
  results_per_page = 20
}

# data "github_user" "team_se" {
#   for_each = toset(local.github_usernames)
#   username = each.value
# }