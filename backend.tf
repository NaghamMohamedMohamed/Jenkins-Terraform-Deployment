terraform {
  backend "s3" {
    bucket         = "jenkins-nagham"
    key            = "vpc-setup/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true 
  }
}
