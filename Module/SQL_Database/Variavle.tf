variable "my_sql" {
    type = map(object({
    
  name         = string
  collation    = string
  license_type = string
  max_size_gb  = number
  sku_name     = string
  enclave_type = string
    tags                = optional(map(string))
    }))

    }


