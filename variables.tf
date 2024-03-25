variable "sg_id" {
  type = string
}

variable "sg_rule" {
  type = map(object({
    type         = string
    description  = string
    to_port      = number
    from_port    = number
    protocol     = string
    sg_cidr      = optional(string)
    source_sg_id = optional(string)
  }))
}