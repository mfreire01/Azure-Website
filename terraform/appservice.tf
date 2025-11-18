resource "azurerm_app_service_plan" "plan" {
  name                = "hello-plan"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "app" {
  name                = "hello-web-${var.suffix}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.plan.id

  app_settings = {
    GREETING_NAME               = var.greeting_name
    WEBSITE_RUN_FROM_PACKAGE    = "1"
  }
}

output "app_url" {
  value = "https://hello-web-${var.suffix}.azurewebsites.net"
}
