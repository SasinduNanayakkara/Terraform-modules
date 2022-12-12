module "resource_group" {
  source = "./resource-groups"
  resource_group_name = "${var.project}-rg-1"
  location = var.location
  environment = var.env
}

module "mssql_server" {
    source = "./MS-SQL"
    resource_group_name = module.resource_group.resource_group_name
    location = var.location
    sqlserver_name = "${var.project}-sql-1"
    administrator_login = ""
    administrator_login_password = ""
    environment = var.env
}

