terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.21.0"
    }
  }
}

module "webservers" {
  source = "../../../modules/webserver"

  for_each = tomap({"1" = 8081, "2" = 8082, "3" = 8083})

  container_name = "${var.container_name}-${each.key}"
  nginx_image = var.nginx_image
  http_port = each.value
}
