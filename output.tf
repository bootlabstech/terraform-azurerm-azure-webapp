# output "id" {
#   description = "The Load Balancer ID."
#   value       = azurerm_lb.loadbalancer.id
# }

output "id" {
  value = azurerm_redis_cache.azurerm_redis_cache.id
}