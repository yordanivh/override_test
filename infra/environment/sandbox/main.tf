resource "null_resource" "example" {
    triggers = {
        uuid=uuid()
    }
    provisioner "local-exec" {
        command = "ls -la ;cat zzz_backend_override.tf "
    }
}
