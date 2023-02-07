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

resource "docker_image" "haproxy" {
  name         = module.globals.loadbalancer_docker_image
  keep_locally = false
}

resource "docker_container" "haproxy" {
  image = docker_image.haproxy.image_id
  name  = var.container_name
  ports {
    internal = local.internal_http_port
    external = var.http_port
  }

  #tags = var.resource_tags

}
