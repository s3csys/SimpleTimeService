terraform {
  backend "s3" {
    bucket         = "terraform-state-secsys-bucket"
    key            = "simpletimeservice/terraform.tfstate"
    region         = "us-east-1"
    #dynamodb_table = "terraform-locks"
    use_lockfile  = true
    encrypt        = true
  }
}
