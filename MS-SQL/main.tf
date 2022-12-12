resource "azurerm_mssql_server" "main" {
  name                         = var.sqlserver_name
  resource_group_name          = var.sqlserver_resource_group_name
  location                     = var.sqlserver_resource_group_location
  version                      = "12.0"
  administrator_login          = var.sqlserver_admin_login_username
  administrator_login_password = var.sqlserver_admin_login_password
  minimum_tls_version          = "1.2"
}

resource "azurerm_mssql_database" "main" {
  name           = var.sqldatabase_name
  server_id      = azurerm_mssql_server.main.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = var.sqldatabase_max_size_gb
  read_scale     = true
  sku_name       = "S0"
  zone_redundant = true

  tags = {
    environment = var.environment
  }
}
