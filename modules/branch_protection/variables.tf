
variable "repository" {
  type        = string
  description = "Full name of the Github repository my-org/name-of-repo"
}

variable "branch" {
  type        = string
  description = "Name of the branch to protect"
}

variable "require_codeowners" {
  type        = bool
  description = "If true a CODEOWNER file will be uploaded and enforced when creating pull requests"
}

variable "review_count" {
  type        = number
  description = "Number of reviews required before letting a pull request to pass"
  default     = 0
}