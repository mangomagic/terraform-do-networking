terraform {
  cloud {
    organization = "digital-ocean"
    workspaces {
      tags = ["networking"]
    }
  }
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "digitalocean" {
  token = var.do_token
}
