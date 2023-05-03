variable "gh_token" {
  description = "Token for github"
  type = string
}

variable "my_app_name" {
  type    = string
  default = "my-java-app"
  sensitive = false
  description = "Name of application to be created. Affects Git repo and pipeline names"
}