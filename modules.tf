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

module "virtual_network" {
  source = "./Virtual-networks"
  resource_group_name = module.resource_group.resource_group_name
  resource_group_location = var.location
  virtual_network_name = "${var.project}-vnet-1"
  subnet1_name = "${var.project}-subnet-1"
  public_ip_name = "${var.project}-public-ip-1"
  virtual_network_gateway_name = "${var.project}-vnet-gateway-1"
  ip_configuration_name = "${var.project}-ip-configuration-1"
  environment = var.env
}

