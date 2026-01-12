resource "azurerm_public_ip" "we_vm01_pip01" {
  name                = "vm01-pip01"
  resource_group_name = azurerm_resource_group.westrg01.name
  location            = azurerm_resource_group.westrg01.location
  allocation_method   = "Static"
}