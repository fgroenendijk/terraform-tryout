variable "env" {
  default = "dev"
}

variable "nginx_image" {
  default = "nginx:1.22.1-perl"
}

variable "http_port" {
  default = 8080
}

variable "container_name" {
  default = "FlorisLBContainerDev"
}