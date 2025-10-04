output "db_name" {
  value = var.rds_name
}

output "db_user" {
  value = var.mysql_user
}

output "db_password" {
  value = var.mysql_pass
}

output "db_endpoint" {
  value = aws_db_instance.mysql.endpoint
}
