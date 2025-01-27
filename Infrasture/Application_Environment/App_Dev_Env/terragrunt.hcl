terraform {
  source = "../../modules"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  environment        = "dev"
  location           = "East2 US"
  resource_group     = "myResourceGroup-dev"
  vnet_name          = "myVnet-dev"
  sql_server_name    = "mySqlServer-dev"
  sql_database_name  = "mySqlDatabase-dev"
  admin_username     = "adminUser-dev"
  admin_password     = "P@ssw0rd!"
  vmss_name          = "myVMSS-dev"
  dsc_configuration_url = "https://path-to-dsc-configuration.ps1"
}
