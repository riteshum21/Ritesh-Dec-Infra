variable "tm_profile" {
  type = map(object({
    resource_group_name    = string
    traffic_routing_method = string

    monitor_config = object({
      protocol                     = string
      port                         = number
      interval_in_seconds          = number
      timeout_in_seconds           = number
      tolerated_number_of_failures = number
    })

    tags = map(string)
  }))
}


