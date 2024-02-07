terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "~> 6"
    }
  }
  cloud {
    organization = "tfo-apj-demos"
    workspaces {
      name = "github-identities"
    }
  }
}