provider "aws" {
  region = "ap-south-1"
}

resource "aws_api_gateway_rest_api" "main_api" {
  name        = "level2-api-gateway"
  description = "Level 2 API Gateway created with Terraform"
}