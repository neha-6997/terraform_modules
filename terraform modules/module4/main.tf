resource "azurerm_service_plan" "example" {
  name                = "app-service-001"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  sku_name            = "S1"
  os_type             = "Windows"
}

resource "azurerm_app_service" "example" {
  name                = "web-app-azure345"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_service_plan.example.id

  site_config {
    always_on = true
    app_command_line = ""
    dotnet_framework_version = "v5.0"
    scm_type = "None"
  }
}
