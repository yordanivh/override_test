resource "null_resource" "example" {
    triggers = {
        uuid=uuid()
    }
    provisioner "local-exec" {
        command = "ls -la ;cat zzz_backend_override.tf "
    }
}

terraform {
  backend "remote" {
    organization = "yordanh_tfc4b"

    workspaces {
      name = "jiberish"
    }
  }
}
