variable "sql_server_name" {
  description = "The name of the SQL server"
  type        = string
}

variable "sql_database_name" {
  description = "The name of the SQL database"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the SQL server"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the SQL server"
  type        = string
}

variable "resource_group" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resources"
  type        = string
}
