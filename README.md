# lenovo_systemupdate cookbook
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

This cookbook installs/configures Lenovo Sysmtem Update for Lenovo or non-Lenovo systems

## Maintainers
This cookbook is maintained by Nghiem Ba Hieu

## Usage
Include `default` recipe wherever you would like Lenovo System Update installed in a run-list (`recipe[lenovo_systemdate]`) or in a cookbook (`include_recipe 'lenovo_systemdate'`). 

## Requirements

Chef 13.0+

### Platforms

- Windows

### Tested Operating Systems

- Windows 10 Pro 1809
- Windows Server 2012 R2

### Cookbooks

## Recipes 

### default

To installs/configures Lenovo System Update

## Attributes 
See `attributes/default.rb` for default values.

- `['lenovo_systemupdate']['source']` - source for Lenovo System Update installation package
- `['lenovo_systemupdate']['checksum']` - checksum for Lenovo System Update installation package (optional)
- `['lenovo_systemupdate']['non_lenovo_system']` - optionally specify cookbook to install Lenovo System Update on non-Lenovo systems or not
