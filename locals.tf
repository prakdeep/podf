locals {

  flat_mmobj = flatten([
    for l, v in var.mmobj : [
      for k, m in v : {
        name = m.name
      }
    ]
  ])



}