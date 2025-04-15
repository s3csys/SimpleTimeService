terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket"
    key            = "simpletimeservice/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
