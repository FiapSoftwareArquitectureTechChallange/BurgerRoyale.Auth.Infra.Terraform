resource "aws_apigatewayv2_api" "burgerroyale_auth_api_gateway" {
  name          = "burgerroyale_auth_http_api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_integration" "burgerroyale_auth_api_gateway_integration" {
  api_id           = aws_apigatewayv2_api.burgerroyale_auth_api_gateway.id
  integration_type = "AWS_PROXY"

  integration_uri        = aws_lambda_function.burgerroyale_auth_lambda_function.arn
  payload_format_version = "2.0"
}

resource "aws_apigatewayv2_route" "burgerroyale_auth_api_gateway_route" {
  api_id    = aws_apigatewayv2_api.burgerroyale_auth_api_gateway.id
  route_key = "ANY /{proxy+}"
}

resource "aws_apigatewayv2_stage" "burgerroyale_auth_api_gateway_stage" {
  api_id      = aws_apigatewayv2_api.burgerroyale_auth_api_gateway.id
  name        = "$default"
  auto_deploy = true
}