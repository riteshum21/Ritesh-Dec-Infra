variable "aksrs" {
    type = map(object({
      name                = string
  location            = string
  resource_group_name = string
  dns_prefix          = string
 

identity = object({
  type = string
  })

tags = map(string)

  default_node_pool = object({
     name       = string
    node_count = number
    vm_size    = string
  })}))
  }
   
  
   
  
