locals {
  tags_base = {
    provisioned_automatically = "true"
    provisioned_by            = "terraform"
    environment               = var.environment
    organisation              = var.organisation
  }

}
