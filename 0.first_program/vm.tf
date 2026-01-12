resource "azurerm_windows_virtual_machine" "we-vm01" {
  name                = "win01-vm01"
  resource_group_name = azurerm_resource_group.westrg01.name
  location            = azurerm_resource_group.westrg01.location
  size                = "Standard_E2s_v3"
  admin_username      = "Hemanth"
  admin_password      = "Password123@"
  network_interface_ids = [
    azurerm_network_interface.we_vm01_NIC01.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2025-Datacenter"
    version   = "latest"
  }
}