variable "rg" {
  type = list(object({
    rg_name  = optional(string)
    location = string



  }))



}


variable "subscription_id" {
  type = string

  default = "79bdf282-66fa-4bdc-b5dc-5f029b9647de"
}


variable "client_id" {
  
  type = string

  default = "973195d4-9965-4184-b8ec-0deb89d4d67e"
}

variable "client_secret" {

  default = "Svl8Q~gcnPA-4X6FHqjiWVmJkcqwz78zykXPKcLl"
  type      = string
  sensitive = true
}

variable "tenant_id" {
  type = string
  default = "df65ce47-b9d7-4489-9610-3ea8b8385565"
}

variable "nicv" {

  type = map(object({

    name = string


  }))


  validation {
    condition     = alltrue([for k, v in var.nicv : length(regexall("[a-zA-z]", v.name)) != 0])
    error_message = "name should contain letters"

  }


}

variable "mapob" {
  type = map(object({

    name = string

    })
  )

  default = {
    lok = {
      name = "Sdfsf"

    }
  }

}

variable "mmobj" {

  type = map(map(object({
    name = string
  })))

  default = {
    "ff" = {
      "sdfdf" = {

        name = "sdfsdfs"

      }
    }
  }
}
