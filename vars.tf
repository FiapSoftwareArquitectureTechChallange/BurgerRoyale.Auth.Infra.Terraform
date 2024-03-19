variable "burgerRoyaleAuth" {
  default = "burgerroyaleauth"
}

variable "burgerRoyale" {
  default = "burgerroyale"
}

variable "regionDefault" {
  default = "us-east-1"
}

variable "roleName" {
  description = "Inform role name"
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
