# Netapp BlueXP deployment on Microsoft Azure using Terraform
Deploy Netapp BlueXP Connector on Azure using Terraform
Using Terraform to deploy Netapp BlueXP on Microsoft Azure.

## Introduction
The BlueXP Connector will allow to establish a relationship with NetApp BlueXP SaaS hosted platformm which allows to manage and control a hybrid and multi-cloud environment in a centralized control plane. The simplicity behind the BlueXP SaaS platform decreases complexity and enables faster and agile administration of your data.

## Project Description
Using Terraform to deploy a Netapp BlueXP Connector using Terraform. On Netapp side we had used a Refresh Token to establishe the relationship between our connector and the Netapp BlueXp SaaS platform. On the Azure side we will use a service-principal with a secret. During the deployment we will create a Custom Role, which later is assigned to the BlueXP VM in order to have all the requirements in place, to access and to deploy our NetApp SaaS services.  This project doest the following:

* Create a Custom Role on Microsoft Azure.
* Create a Resource Group, which will contains all the objects needed.
* Deploy a Virtual Machine, which is our NetApp BlueXP Connector.
* Assignes the Custom Role to the VM, acting like a Managed Entity.
* Creates a relation ship between BlueXP Connector and Netapp SaaS Plaform.
* Will enable to deploy NetApp SaaS Services, discover your OnPrem environment.
* Enable a single pane of glass when it comes to orqchestrate a hybrid and multi-cloud environment. 

## File Schema
* main.tf -> this will contain the majority of the configurations, excluding variables and credentials.
* providers.tf -> the providers file contains the configurations needed for accessing those providers.
* terraform.tfvars -> this file contains the variables that are needed for the deployment.
* variables.tf ->this file defines the type of the variables. 

## Testing
First of all we need to understand the entities involved here. Azure which is the hyperscaler where we will deploy our BlueXP Connector and Netapp. For Azure there are multiple ways to authenticate and deploy resources. This was focus on a service-principal.
Regarding NetApp, we need to have a BlueXP account previsouly created and a workspace defined, since the BlueXP will be tied to that. In addiction to be able to link the BlueXP Connector to BlueXP NetApp SaaS platform, we will need in this case a refresh token, that we can gather from https://services.cloud.netapp.com/refresh-token/ .

```bash
#clone this repository
$git clone https://github.com/netapp-pedrof/terraform_deploy_bluexp_azure.git

#Logon with a service-principal which must have rights to create service-principal, custom role and virtual machine.
az login –service-principal -u <app-id> -p <password/cert>  --tenant <tennant-id>

#check if you have logged on.
az account list

#using Terraform (must be installed on your machine -> https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli ) deploy the resources needed.
#note: Sometimes there is some delay creating the objects and failing the deployment. Retry again in those cases. 
terraform init
terraform plan
terraform apply
```
After the NetApp BlueXP deployment, you may access directly to your BlueXP connector using your browser, or our advise is to use the SaaS platform @ https://bluexp.netapp.com .

## External Links
**Netapp
Terraform & Cloud Manager Terraform Provider (netapp.com)
https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs
https://registry.terraform.io/providers/NetApp/netapp-cloudmanager/latest/docs/resources/connector_azure
 
**Azure
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
