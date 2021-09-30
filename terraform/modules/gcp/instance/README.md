## Requirements

No requirements.

## Providers

The following providers are used by this module:

- <a name="provider_google"></a> [google](#provider\_google)

## Modules

No modules.

## Resources

The following resources are used by this module:

- [google_compute_disk.disks](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_disk) (resource)
- [google_compute_firewall.firewall](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall) (resource)
- [google_compute_instance.compute_instance](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) (resource)
- [google_compute_image.image](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) (data source)
- [google_compute_image.image_family](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_image) (data source)
- [google_compute_network.network](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_network) (data source)
- [google_compute_subnetwork.subnetwork](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/compute_subnetwork) (data source)

## Required Inputs

The following input variables are required:

### <a name="input_ci_name"></a> [ci\_name](#input\_ci\_name)

Description: Name for instances.

Type: `any`

### <a name="input_ci_tags"></a> [ci\_tags](#input\_ci\_tags)

Description: Network tags, provided as a list

Type: `list(string)`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_ci_attached_disks"></a> [ci\_attached\_disks](#input\_ci\_attached\_disks)

Description: Additional disks, if options is null defaults will be used in its place.

Type:

```hcl
list(object({
    name        = string
    size        = number
    auto_delete = bool
    mode        = string
    type        = string
  }))
```

Default: `[]`

### <a name="input_ci_boot_disk_auto_delete"></a> [ci\_boot\_disk\_auto\_delete](#input\_ci\_boot\_disk\_auto\_delete)

Description: Whether or not the boot disk should be auto-deleted

Type: `bool`

Default: `true`

### <a name="input_ci_boot_disk_size"></a> [ci\_boot\_disk\_size](#input\_ci\_boot\_disk\_size)

Description: Boot disk size in GB

Type: `number`

Default: `20`

### <a name="input_ci_boot_disk_type"></a> [ci\_boot\_disk\_type](#input\_ci\_boot\_disk\_type)

Description: Boot disk type, can be either pd-ssd, local-ssd, or pd-standard

Type: `string`

Default: `"pd-standard"`

### <a name="input_ci_boot_image"></a> [ci\_boot\_image](#input\_ci\_boot\_image)

Description: Source disk image. If neither source\_image nor source\_image\_family is specified, defaults to the latest public CentOS image.

Type: `string`

Default: `""`

### <a name="input_ci_boot_image_family"></a> [ci\_boot\_image\_family](#input\_ci\_boot\_image\_family)

Description: Source image family. If neither source\_image nor source\_image\_family is specified, defaults to the latest public CentOS image.

Type: `string`

Default: `""`

### <a name="input_ci_boot_image_project"></a> [ci\_boot\_image\_project](#input\_ci\_boot\_image\_project)

Description: Project where the source image comes from. The default project contains images that support Shielded VMs if desired

Type: `string`

Default: `""`

### <a name="input_ci_firewall_allow_ports"></a> [ci\_firewall\_allow\_ports](#input\_ci\_firewall\_allow\_ports)

Description: Firewall rules will be applied to the instance.

Type:

```hcl
list(object({
    name     = string
    protocol = string
    ports    = list(string)
  }))
```

Default: `[]`

### <a name="input_ci_labels"></a> [ci\_labels](#input\_ci\_labels)

Description: Labels, provided as a map

Type: `map(string)`

Default: `{}`

### <a name="input_ci_machine_type"></a> [ci\_machine\_type](#input\_ci\_machine\_type)

Description: Machine type to create, e.g. n1-standard-1

Type: `string`

Default: `"n1-standard-1"`

### <a name="input_ci_metadata"></a> [ci\_metadata](#input\_ci\_metadata)

Description: Metadata, provided as a map

Type: `map(string)`

Default: `{}`

### <a name="input_ci_metadata_startup_script"></a> [ci\_metadata\_startup\_script](#input\_ci\_metadata\_startup\_script)

Description: User startup script to run when instances spin up

Type: `string`

Default: `""`

## Outputs

The following outputs are exported:

### <a name="output_instance_ip"></a> [instance\_ip](#output\_instance\_ip)

Description: List of IPs for compute instance

### <a name="output_instance_self_links"></a> [instance\_self\_links](#output\_instance\_self\_links)

Description: List of self-links for compute instance
