variable "gh_token" {
  description = "Token for github"
  type = string
}

variable "app_name" {
  type    = string
  default = "my-java-app"
  sensitive = false
  description = "Name of application to be created. Affects Git repo and pipeline names"
}

variable "app_description" {
  type    = string
  default = ""
  sensitive = false
  description = "Description of application to be created."
}