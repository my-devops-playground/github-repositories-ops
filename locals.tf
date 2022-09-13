locals {
  configuration = jsondecode(file("repositories.json"))
}