terraform {
  backend "s3" {
    bucket = "backend-state-dilmurod"
    key    = "infrastructure"
    region = "us-east-1"
  }
}