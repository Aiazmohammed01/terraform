# terraform {
#   backend "s3" {
#     bucket = "my-tf-test-bucket-aiaz"
#     key    = "terraform/backend"
#     region = "us-east-1"
#     profile = "terraform"
#   }
# }

# terraform {
#     backend "local" {
#         path = "/Users/aiazmohammed/Desktop/learn/terraform/Lab-1/terraform.tfstate"
#     }
# }


terraform {
  cloud {
    organization = "MohammedAiazuddin"
    workspaces {
      name = "test-workspace"
    }
  }
}