variable "env" {
  default = "prod"
}

variable "nginx_image" {
  default     = "nginx:1.22.1-perl"
}

variable "http_port" {
  default = 80
}

variable "container_name" {
  default = "FlorisContainerProd"
}