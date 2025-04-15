resource "aws_lambda_function" "lambda_from_ecr" {
  function_name = "lambda-from-ecr"
  role          = aws_iam_role.lambda_ecr_role.arn
  package_type  = "Image"

  image_uri = "838365449755.dkr.ecr.us-east-1.amazonaws.com/helloworldecr:latest"  # Replace with your actual image URI

  timeout     = 30
  memory_size = 512
}
