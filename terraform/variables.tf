variable "location" {
  default = "westeurope"
}

variable "resource_group" {
  default = "hello-world-rg"
}

variable "suffix" {
  description = "Unique suffix for naming"
}

variable "greeting_name" {
  description = "Greeting message"
}
