
############################################
# /json and /json/{todo} (JSONPlaceholder)
############################################

# /json
resource "aws_api_gateway_resource" "json" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id
  parent_id   = aws_api_gateway_rest_api.main_api.root_resource_id
  path_part   = "json"
}

# /json/{todo}
resource "aws_api_gateway_resource" "json_todo" {
  rest_api_id = aws_api_gateway_rest_api.main_api.id
  parent_id   = aws_api_gateway_resource.json.id
  path_part   = "{todo}"
}

# GET /json
resource "aws_api_gateway_method" "json_get" {
  rest_api_id   = aws_api_gateway_rest_api.main_api.id
  resource_id   = aws_api_gateway_resource.json.id
  http_method   = "GET"
  authorization = "NONE"
}

# GET /json/{todo}
resource "aws_api_gateway_method" "json_todo_get" {
  rest_api_id   = aws_api_gateway_rest_api.main_api.id
  resource_id   = aws_api_gateway_resource.json_todo.id
  http_method   = "GET"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.todo" = true
  }
}

# Integration: /json -> /todos
resource "aws_api_gateway_integration" "json_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.main_api.id
  resource_id             = aws_api_gateway_resource.json.id
  http_method             = aws_api_gateway_method.json_get.http_method
  type                    = "HTTP_PROXY"
  integration_http_method = "GET"
  uri                     = "https://jsonplaceholder.typicode.com/todos"
}

# Integration: /json/{todo} -> /todos/{todo}
resource "aws_api_gateway_integration" "json_todo_get_integration" {
  rest_api_id             = aws_api_gateway_rest_api.main_api.id
  resource_id             = aws_api_gateway_resource.json_todo.id
  http_method             = aws_api_gateway_method.json_todo_get.http_method
  type                    = "HTTP_PROXY"
  integration_http_method = "GET"
  uri                     = "https://jsonplaceholder.typicode.com/todos/{todo}"

  request_parameters = {
    "integration.request.path.todo" = "method.request.path.todo"
  }
}