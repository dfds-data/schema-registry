output "db_host" {
  value = module.db.db_instance_address
}

output "db_port" {
  value = module.db.db_instance_port
}

output "db_username" {
  value = module.db.db_instance_username
  sensitive = true
}

output "db_password" {
  value = module.db.db_instance_password
  sensitive = true
}