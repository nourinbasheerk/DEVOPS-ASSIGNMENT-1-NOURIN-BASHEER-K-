############################################
# /weather
############################################

resource "aws_api_gateway_resource" "weather" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id
  parent_id   = aws_api_gateway_rest_api.main_api.root_resource_id
  path_part   = "weather"
}

resource "aws_api_gateway_method" "weather_get" {
  rest_api_id   = aws_api_gateway_rest_api.main_api.id
  resource_id   = aws_api_gateway_resource.weather.id
  http_method   = "GET"
  authorization = "NONE"

  request_parameters = {
    "method.request.querystring.latitude"  = true
    "method.request.querystring.longitude" = true
    "method.request.querystring.hourly"    = false
  }
}

resource "aws_api_gateway_integration" "weather_integration" {
  rest_api_id             = aws_api_gateway_rest_api.main_api.id
  resource_id             = aws_api_gateway_resource.weather.id
  http_method             = aws_api_gateway_method.weather_get.http_method
  type                    = "HTTP_PROXY"
  integration_http_method = "GET"

  uri = "https://api.open-meteo.com/v1/forecast"

  request_parameters = {
    "integration.request.querystring.latitude"  = "method.request.querystring.latitude"
    "integration.request.querystring.longitude" = "method.request.querystring.longitude"
    "integration.request.querystring.hourly"    = "method.request.querystring.hourly"
  }
}