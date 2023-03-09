##################################################################################################################################################################################
# Microsoft Azure Variables -> https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/guides/service_principal_client_secret
# az login --service-principal -u _YOUR_APP_ID -p _YOUR_CLIENT_SECRET --tenant _YOUR_AZURE_TENANT_ID
# Note: The service principal must have previleges to create a role and deploy the Virtual Machine.
# The client_id is usually also the app_id. 
azure_client_id       = "_YOUR_AZURE_CLIENT_ID_"
azure_client_secret   = "_YOUR_AZURE_CLIENT_SECRET_"
azure_tenant_id       = "_YOUR_AZURE_TENANT_ID_"
azure_subscription_id = "_YOUR_AZURE_SUBSCRIPTION_ID_"

# Azure variables to deploy de pre-requirements for BlueXP Deployments.
azure_bluexp_resource_group         = "_YOUR_AZURE_RESOURCE_GROUP_"
azure_bluexp_location               = "_YOUR_AZURE_LOCATION_"
azure_bluexp_network_security_group = "_YOUR_AZURE_NETWORK_SECURITY_GROUP_"
azure_vm_size                       = "_YOUR_AZURE_VM_SIZE_"
#Storage Account should be less than 24 Characters
azure_storage_account               = "_YOUR_AZURE_STORAGE_ACCOUNT_"

##################################################################################################################################################################################
# Netapp Variables to deploy the BlueXP Connector -> https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs/resources/cvo_azure
# Netapp Refresh Token can be retrieved from here -> https://services.cloud.netapp.com/refresh-token
netapp_refresh_token                = "_NETAPP_CLOUD_CENTRAL_REFRESH_TOKEN_"
netapp_account_id                   = "_NETAPP_BLUEXP_ACCOUNT_ID_"
netapp_managed_identity_custom_role = "_NAME_OF_THE_CUSTOM_ROLE_"
netapp_bluexp_connector_name        = "_NAME_OF THE_CONNECTOR_"
netapp_company                      = "NetApp"
# subnet_id and vnet_id use the full pah /subscriptions/_YOUR_SUBSCRIPTION_ID_/resourceGroups/_YOUR_RESOURCE_GROUP_/providers/Microsoft.Network/virtualNetworks/_YOUR_VNET_NAME/......
netapp_subnet_id                    = "_YOUR_AZURE_SUBNET_ID_"
netapp_vnet_id                      = "_YOUR_AZURE_VNET_ID_"
netapp_associate_public_ip_address  = "false"
netapp_connector_vm_admin_username  = "_NETAPP_VM_ADMIN_ACCOUNT_"
netapp_connector_vm_admin_password  = "_NETAPP_VM_ADMIN_PASSWORD_"