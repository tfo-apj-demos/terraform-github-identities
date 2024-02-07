locals {
  github_usernames = flatten(concat(
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "team-se" ],
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "apac-se" ]
  ))
}

# Lookup our GitHub org for teams and memberships
data "github_team" "this" {
  for_each = toset(var.github_teams)
  slug = each.value
}