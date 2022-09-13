
variable "repository" {
  type        = string
  description = "Full name of the Github repository my-org/name-of-repo"
}

variable "branch" {
  type        = string
  description = "Name of the branch to protect"
}

variable "signed_commits" {
  type        = bool
  description = "Whether or not to force to do signed commits"
  default     = true
}

variable "review_count" {
  type        = number
  description = "Number of reviews required before letting a pull request to pass"
  default     = 0
}

variable "codeowners" {
  type        = map(string)
  description = "A map with CODEOWNER entries in the form of path:principal"
  default     = {}
}

variable "codeowners_commit_message" {
  type        = string
  description = "Message to add when commiting CODEOWNERS file"
  default     = "Added CODEOWNER file for branch protection"
}

variable "codeowners_commit_author" {
  type        = string
  description = "Author to add when commiting CODEOWNERS file"
  default     = "@devops"
}

variable "codeowners_overwrite" {
  type        = bool
  description = "Whether or not to overwrite the current CODEOWNERS file"
  default     = false
}