locals {
  enableUnscopedActions = length(var.unscopedActions) > 0 ? [1] : []
  enableScopedActions   = length(var.scopedActions) > 0 ? [1] : []
}

variable "scopedActions" {
  type        = list(any)
  description = "scopedActions (list): List of actions to pass to the IAM policy generation"
  default     = []
}

variable "scopedResources" {
  type        = list(any)
  description = "scopedResources (list): List of resources that have the actions assigned during IAM policy generation"
  default     = []
}

variable "unscopedActions" {
  type        = list(any)
  description = "unscopedActions (list): List of actions that are unscoped and have access to '*'."
  default     = []
}

variable "assumeIdentifiers" {
  type        = list(any)
  description = "assumeIdentifiers (list): List of identifiers that are allowed to assume the generated role."
}

variable "roleName" {
  type        = string
  description = "roleName (str): Identification name of the generated IAM Role."
}

variable "rolePath" {
  type        = string
  description = "rolePath (str): Logical path that the IAM Role will be stored in. (ex: '/system/')"
}

variable "maxSessionDuration" {
  type        = number
  description = "maxSessionDuration (number): Number in seconds of max session duration."
  default     = 3600
}
