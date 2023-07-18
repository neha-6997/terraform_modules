resource "azurerm_virtual_network" "vnet1" {
  name                = "vnet1"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

}
resource "azurerm_subnet" "sub1" {
  name                 = "sub1"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet1.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_network_interface" "nic" {
  name                = "nic1"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "my_nic_configuration"
    subnet_id                     = azurerm_subnet.sub1.id
    private_ip_address_allocation = "Dynamic"
  }
}