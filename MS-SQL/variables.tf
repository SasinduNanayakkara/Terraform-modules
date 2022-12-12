variable "sqlserver_name" {
  type = string
  description = "value of the sqlserver name"
  default = "test-sqls"
}

variable "sqlserver_resource_group_name" {
  type = string
  description = "value of the resource group name"
  default = "test"
}

variable "sqlserver_resource_group_location" {
  type = string
  description = "value of the resource group location"
  default = "Central US"
}

variable "sqlserver_admin_login_username" {
  type = string
  description = "value of the sqlserver admin login username"
  default = "dev-admin"
}

variable "sqlserver_admin_login_password" {
  type = string
  description = "value of the sqlserver admin login password"
  default = "dev-admin-P@ssw0rd"
}

variable "sqldatabase_name" {
  type = string
  description = "value of the sqldatabase name"
  default = "dev-sqld"
}

variable "sqldatabase_max_size_gb" {
  type = string
  description = "value of the sqldatabase max size gb"
  default = "1"
}

variable "environment" {
  type = string
  description = "value of the environment"
}