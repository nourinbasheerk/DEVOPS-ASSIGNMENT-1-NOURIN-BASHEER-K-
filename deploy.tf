resource "aws_api_gateway_deployment" "deploy" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id

  depends_on = [
    aws_api_gateway_integration.countries_integration
  ]
}

resource "aws_api_gateway_stage" "v1" {
  rest_api_id   = aws_api_gateway_rest_api.main_api.id
  deployment_id = aws_api_gateway_deployment.deploy.id
  stage_name    = "v1"
}

output "invoke_url" {
  value = aws_api_gateway_stage.v1.invoke_url
}