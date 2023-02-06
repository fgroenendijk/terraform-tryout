terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

provider "docker" {}

module "webservers" {
  source = "../../modules/webserver"

  container_name = var.container_name
  nginx_image = var.nginx_image
  http_port = var.http_port
}
