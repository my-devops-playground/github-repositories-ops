module "branch-protection" {
  source       = "./modules/branch-protection"
  repositories = local.configuration
}