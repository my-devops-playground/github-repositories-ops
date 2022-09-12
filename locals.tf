locals {
  configuration = yamldecode(file("repositories.yml"))
}