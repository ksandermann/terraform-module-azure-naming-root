locals {
  #inputs
  organisation          = var.organisation
  location              = var.location
  environment           = var.environment
  location_abbreviation = lookup(local.locations_by_name, local.location)

  #fix abbreviations
  locations_by_abbreviation = {
    WE = "westeurope"
    NE = "northeurope"
  }

  locations_by_name = zipmap(values(local.locations_by_abbreviation), keys(local.locations_by_abbreviation))

  resource_abbreviations = {
    resource_group              = "RGP"
    aks                         = "AKS"
    key_vault                   = "VLT"
    storage_account             = "STA"
    recovery_services_vault     = "RSV"
    availabilityset             = "AVS"
    sql_server                  = "ASQ"
    virtual_network             = "NET"
    azure_service_bus           = "ASB"
    shared_image_gallery        = "SIG"
    postgres_server             = "APG"
    azure_loadbalancer_internal = "LBI"
    azure_loadbalancer_external = "LBE"
    vm_scaleset_linux           = "SSL"
  }

  #calculated values
  resource_name_prefix = upper(format("%s%s%s", local.organisation, local.location_abbreviation, local.environment))

  resource_basenames = {
    resource_group              = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["resource_group"])
    aks                         = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["aks"])
    key_vault                   = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["key_vault"])
    storage_account             = lower(format("%s%s", local.resource_name_prefix, local.resource_abbreviations["storage_account"]))
    recovery_services_vault     = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["recovery_services_vault"])
    availabilityset             = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["availabilityset"])
    sql_server                  = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["sql_server"])
    virtual_network             = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["virtual_network"])
    azure_service_bus           = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["azure_service_bus"])
    shared_image_gallery        = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["shared_image_gallery"])
    postgres_server             = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["postgres_server"])
    azure_loadbalancer_internal = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["azure_loadbalancer_internal"])
    azure_loadbalancer_external = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["azure_loadbalancer_external"])
    vm_scaleset_linux           = format("%s%s", local.resource_name_prefix, local.resource_abbreviations["vm_scaleset_linux"])
  }
}
