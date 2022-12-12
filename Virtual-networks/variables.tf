variable "resource_group_name" {
  type = string
  description = "resource group name"
  default = "rg-1"
}

variable "resource_group_location" {
  type = string
  description = "resource group location"
  default = "East US"
}

variable "virtual_network_name" {
  type = string
  description = "virtual network name"
  default = "main"
}

variable "subnet1_name" {
  type = string
  description = "subnet1 name"
  default = "subnet1"
}

variable "public_ip_name" {
  type = string
  description = "public ip name"
  default = "main"
}

variable "virtual_network_gateway_name" {
  type = string
  description = "virtual network gateway name"
  default = "main"
}

variable "ip_configuration_name" {
  type = string
  description = "ip configuration name"
  default = "main"
}