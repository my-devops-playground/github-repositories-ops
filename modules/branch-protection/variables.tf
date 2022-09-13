variable "repositories" {
  type = map(object({
    branch-protection = object({
      branch = string
      pull-requests = object({
        review-count = number
        codeowners   = map(string)
      })
    })
  }))
}