variable "rg" {
  type = list(object({
    rg_name  = optional(string)
    location = string



  }))



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
