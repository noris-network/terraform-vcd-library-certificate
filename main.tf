resource "vcd_library_certificate" "certificate" {
  org                    = var.vdc_org_name
  alias                  = var.alias
  description            = var.description
  certificate            = var.certificate
  private_key            = var.private_key
  private_key_passphrase = var.private_key_passphrase
}
