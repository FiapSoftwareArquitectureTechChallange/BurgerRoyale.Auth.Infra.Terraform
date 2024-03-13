variable "projectName" {
  default = "burgerroyaleauth"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "dbName" {
  default = "BurgerRoyaleAuthDb"
}

variable "dbUserName" {
  description = "Inform database username"
}

variable "dbPassword" {
  description = "Inform database password"
}

variable "jwtIssuer" {
  description = "Inform JWT issuer"
}

variable "jwtAudience" {
  description = "Inform JWT audience"
}

variable "jwtSecret" {
  description = "Inform JWT secret"
}

variable "functionName" {
  default = "burgerroyaleauth-lambda"
}

variable "bucketName" {
  default = "burgerroyale-auth-s3-bucket"
}