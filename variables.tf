##################################################################################################################################################################################
#Azure Variables Definition
variable "azure_client_id" {
  type = string
}
variable "azure_client_secret" {
  type = string
}
variable "azure_tenant_id" {
  type = string
}
variable "azure_subscription_id" {
  type = string
}
variable "azure_bluexp_resource_group" {
  type = string
}
variable "azure_bluexp_location" {
  type = string
}
variable "azure_bluexp_network_security_group" {
  type = string
}
variable "azure_storage_account" {
  type = string
}
variable "azure_vm_size" {
  type = string
}
variable "netapp_refresh_token" {
  type = string
}
##################################################################################################################################################################################
#Netapp Variables
variable "netapp_company" {
  type = string
}
variable "netapp_account_id" {
  type = string
}
variable "netapp_bluexp_connector_name" {
  type = string
}
variable "netapp_connector_vm_admin_username" {
  type = string
}
variable "netapp_connector_vm_admin_password" {
  type = string
}
variable "netapp_associate_public_ip_address" {
  type = string
}
variable "netapp_vnet_id" {
  type = string
}
variable "netapp_subnet_id" {
  type = string
}
variable "netapp_managed_identity_custom_role" {
  type = string
}






