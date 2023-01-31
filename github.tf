data "github_repository" "repo" {
  full_name = var.repo_name
}

resource "github_repository_environment" "aws_environment" {
  repository  = data.github_repository.repo.name
  environment = "AWS"
}

locals {
  ipv4_address = module.compute.home_app_ip
}
