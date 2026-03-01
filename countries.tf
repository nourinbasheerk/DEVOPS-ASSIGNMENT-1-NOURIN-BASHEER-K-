resource "aws_api_gateway_resource" "countries" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id
  parent_id   = aws_api_gateway_rest_api.main_api.root_resource_id
  path_part   = "countries"
}
# /countries/{name}
resource "aws_api_gateway_resource" "country_name" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id
  parent_id   = aws_api_gateway_resource.countries.id
  path_part   = "{name}"
}
resource "aws_api_gateway_method" "countries_get" {
  rest_api_id   = aws_api_gateway_rest_api.main_api.id
  resource_id   = aws_api_gateway_resource.country_name.id
  http_method   = "GET"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.name" = true
  }
}
resource "aws_api_gateway_integration" "countries_integration" {
  rest_api_id             = aws_api_gateway_rest_api.main_api.id
  resource_id             = aws_api_gateway_resource.country_name.id
  http_method             = aws_api_gateway_method.countries_get.http_method
  integration_http_method = "GET"
  type                    = "HTTP_PROXY"
  uri                     = "https://restcountries.com/v3.1/name/{name}"

  request_parameters = {
    "integration.request.path.name" = "method.request.path.name"
  }
}