resource "azurerm_virtual_machine_extension" "dsc_extension" {
  name                 = "DSC"
  virtual_machine_id   = azurerm_virtual_machine_scale_set.vmss.id
  publisher            = "Microsoft.Powershell"
  type                 = "DSC"
  type_handler_version = "2.76"
  settings = <<SETTINGS
    {
        "configuration": {
            "url": "${var.dsc_configuration_url}",
            "script": "Configuration.ps1",
            "function": "MyDscConfiguration"
        },
        "configurationArguments": {
            "argument1": "value1"
        },
        "dependsOn": []
    }
SETTINGS
}
