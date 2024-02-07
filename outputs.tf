output "github_usernames" {
  value = flatten(concat(
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "team-se" ],
    [ for team in data.github_organization_teams.team_se.teams: team.members if team.name == "apac-se" ]
  ))
}