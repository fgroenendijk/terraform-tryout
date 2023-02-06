terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

module "globals" {
  source = "../../globals"
}

resource "docker_image" "nginx" {
  name         = module.globals.nginx_docker_image
  keep_locally = false
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = local.internal_http_port
    external = var.http_port
  }

  #tags = var.resource_tags

}
