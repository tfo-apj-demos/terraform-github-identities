output "github_usernames" {
  value = [
    for team in data.github_team.this : team.members
  ]
}