variable "rg" {
  type = list(object({
    rg_name  = optional(string)
    location = string



  }))


}
