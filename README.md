# Google Instances Terraform module

Simples Módulo para Terraform que cria máquinas no Google Cloud Platform.

## Terraform versão

Terraform > 0.12.19

Esta definição encontra-se no arquivo `versions.tf`

## Como utilizar

```hcl
module "instance" {
  source = "git@github.com/gdglajeado/tf-module-gcp-instances.git?ref=v1.0"

  name         = "rundeck"
  machine_type = "n1-standard-1"
  network      = module.network.self_link
  subnetwork   = module.subnetwork.self_link
  tags         = ["rundeck-stack"]
}
```