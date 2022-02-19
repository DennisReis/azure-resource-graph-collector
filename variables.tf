variable "user_assigned_identity" {
  type = object({
    name           = string
    resource_group = string
  })
  description = "User Assigned Identity to associate to the azure function."
}

variable "loki_endpoint_url" {
  type        = string
  description = "Endpoint for Loki."
}

variable "loki_authentication" {
  type = object({
    username = string
    password = string
  })
  sensitive   = true
  description = "Authentication information for Loki endpoint."
}

variable "resource_graph_query_id" {
  type        = string
  description = "Resource Graph Query to use (must be a resource ID)."
}

variable "resource_group" {
  type        = string
  default     = "rg-az-graph-collector"
  description = "Resource Group to create."
}

variable "location" {
  type        = string
  default     = "westeurope"
  description = "Location where the resources will be created."
}

variable "function_app_identifier" {
  type        = string
  default     = "resource-graph-collector"
  description = "Identifier to be used in the name composition."
}

variable "tags" {
  type    = map(string)
  default = {
    "deployer"    = "gchiesa"
    "application" = "azure-resource-graph-collector"
    "stage"       = "dev"
  }
}