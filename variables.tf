variable "rg" {
  type = list(object({
    rg_name  = optional(string)
    location = string



  }))



}


variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type      = string
  sensitive = true
}

variable "tenant_id" {
  type = string
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
