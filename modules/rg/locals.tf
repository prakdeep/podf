locals {
  tags = {
    "id"   = "test"
    "cart" = "lop"
  }

  rg_og = [for val in var.rg : merge(val, {
    tags     = local.tags
    location = "eastus"
  })]
}