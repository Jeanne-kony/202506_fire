resource "azurerm_container_registry" "acr" {
  name                = replace(replace("${var.project}${var.environment}acr", "_", ""), "-", "")
  resource_group_name = data.azurerm_resource_group.rg.name
  location            = data.azurerm_resource_group.rg.location
  sku                 = "Basic"
  admin_enabled       = true
}