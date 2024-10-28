############################################################################
## terraformブロック
############################################################################
terraform {
  # Terraformのバージョン指定
  required_version = "~> 1.7.0"

  # Terraformのaws用ライブラリのバージョン指定
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.33.0"
    }
  }
}

############################################################################
## providerブロック
############################################################################
provider "aws" {
  # リージョンを指定
  region = "ap-northeast-1"

  # リソース共通のタグを指定
  default_tags {
    tags = {
      project = local.project
    }
  }
}

locals {
  project = "spike-lightsail"
}

############################################################################
## lightsail インスタンス
############################################################################
resource "aws_lightsail_instance" "wordpress" {
  name              = "${local.project}-wordpress"
  availability_zone = "ap-northeast-1a"
  blueprint_id      = "wordpress"
  bundle_id         = "nano_3_0"
}