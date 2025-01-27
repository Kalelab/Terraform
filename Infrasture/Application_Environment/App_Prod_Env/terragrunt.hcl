terraform {
  source = "../../modules"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  environment        = "prod"
  location           = "East2 US"
  resource_group     = "myResourceGroup-prod"
  vnet_name          = "myVnet-prod"
  sql_server_name    = "mySqlServer-prod"
  sql_database_name  = "mySqlDatabase-prod"
  admin_username     = "adminUser-prod"
  admin_password     = "P@ssw0rd!"
  vmss_name          = "myVMSS-prod"
  dsc_configuration_url = "https://path-to-dsc-configuration.ps1"
}
