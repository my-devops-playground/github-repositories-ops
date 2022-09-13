variable "repository" {
  type        = string
  description = "Name of the repository to add members to"
}

variable "teams" {
  type        = map(string)
  description = "A key/value entries representing team-name/permission"
  default     = {}
}

variable "people" {
  type        = map(string)
  description = "A key/value entries representing individual-user/permission"
  default     = {}
}