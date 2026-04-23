terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "gporg"
    workspaces {
      name = "Space-Game--web"
    }


  }
}
