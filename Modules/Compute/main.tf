resource "azurerm_network_interface" "vmname_nic" {
    name                = "var.Nic_name"
    location            = "var.location"
    resource_group_name = "var.Rg_name"

    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.subnet_name.id
        private_ip_address_allocation = "Dynamic"
    }

    tags = {
        environment = "Production"
    }   
  
}

resource "azurerm_virtual_machine" "vmname" {
    name                  = "var.Vm_name"
    location              = "var.location"
    resource_group_name   = "var.Rg_name"
    network_interface_ids = [azurerm_network_interface.vmname_nic.id]
    vm_size               = "Standard_DS1_v2"

    storage_image_reference {
        publisher = "Canonical"
        offer     = "UbuntuServer"
        sku       = "16.04-LTS"
        version   = "latest"
    }

    storage_os_disk {
        name              = "myosdisk1"
        caching           = "ReadWrite"
        create_option     = "FromImage"
        managed_disk_type = "Premium_LRS"
    }

    os_profile {
        computer_name  = "var.Vm_name"
        admin_username = "adminuser"
        admin_password = "Password1234!"
    }

    os_profile_linux_config {
        disable_password_authentication = false
    }

    tags = {
        environment = "Production"
  
    }
}