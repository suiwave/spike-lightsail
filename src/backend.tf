############################################################################
## terraformブロック
############################################################################
terraform {
  backend "local" {
    path = "local.tfstate"
  }
}