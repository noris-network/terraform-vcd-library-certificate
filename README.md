# terraform-vcd-library-certificate

Terraform module which manages certificate ressources in the certificate library on VMWare Cloud Director.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.9 |
| <a name="requirement_vcd"></a> [vcd](#requirement\_vcd) | >= 3.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vcd"></a> [vcd](#provider\_vcd) | 3.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vcd_library_certificate.certificate](https://registry.terraform.io/providers/vmware/vcd/latest/docs/resources/library_certificate) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alias"></a> [alias](#input\_alias) | Alias (name) of certificate. | `string` | n/a | yes |
| <a name="input_certificate"></a> [certificate](#input\_certificate) | Content of Certificate. | `string` | n/a | yes |
| <a name="input_vdc_org_name"></a> [vdc\_org\_name](#input\_vdc\_org\_name) | The name of the organization to use. | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of media file. | `string` | `null` | no |
| <a name="input_private_key"></a> [private\_key](#input\_private\_key) | Content of private key. | `string` | `null` | no |
| <a name="input_private_key_passphrase"></a> [private\_key\_passphrase](#input\_private\_key\_passphrase) | private key pass phrase. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The ID of the certificate. |
<!-- END_TF_DOCS -->

## Examples

```
module "certificate" {
  source       = "git::https://github.com/noris-network/terraform-vcd-library-certificate?ref=1.0.0"
  alias        = "www.example.net"
  description  = "my TLS cert"
  vdc_org_name = "myORG"
  certificate  = file("pki/certs/www.example.net.bundle.crt.pem")
  private_key  = file("pki/keys/www.example.net.key.pem")
}
```
