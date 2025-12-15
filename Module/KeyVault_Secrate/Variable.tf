variable "KVS" {
  type = map(object({
    username_name  = string
    username_value = string
    password_name  = string
    password_value = string
  }))
}