terraform {
  source = "../../modules"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  environment        = "test"
  location           = "East2 US"
  resource_group     = "myResourceGroup-test"
  vnet_name          = "myVnet-test"
  sql_server_name    = "mySqlServer-test"
  sql_database_name  = "mySqlDatabase-test"
  admin_username     = "adminUser-test"
  admin_password     = "P@ssw0rd!"
  vmss_name          = "myVMSS-test"
  dsc_configuration_url = "https://path-to-dsc-configuration.ps1"
}
