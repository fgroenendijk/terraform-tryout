output "nginx_docker_image" {
  value     = "nginx:1.22.1-perl"
}

output "loadbalancer_docker_image" {
  value     = "haproxy:2.7.2-alpine"
}
