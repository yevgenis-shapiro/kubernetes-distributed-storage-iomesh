variable "name" {
  type        = string
  description = "The name of the deployment."
  default     = "iomesh"
}

variable "namespace" {
  type        = string
  description = "The namespace of the deployment."
  default     = "iomesh"
}

variable "compartment" {
  type        = string
  description = "The compartment the ressource is deployed with."
}


variable "helm_chart_version" {
  type    = string
  default = "1.2.0"
}

