terraform {
  backend "s3" {
    bucket         = "tf-lab3-bucket-nagham"
    key            = "vpc-setup/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile   = true 
  }
}
