resource "azurerm_sql_server" "sql_server" {
  name                         = var.sql_server_name
  resource_group_name          = var.resource_group
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

resource "azurerm_sql_database" "sql_db" {
  name                = var.sql_database_name
  resource_group_name = var.resource_group
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  max_size_bytes      = "2147483648"
}
