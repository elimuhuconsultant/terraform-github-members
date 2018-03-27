variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "users" {
  description = "List of organization member user maps to manage"
  type        = "list"
}
