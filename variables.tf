variable "name" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
}

variable "machine_type" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um tamanho de máquina para o Google Cloud Platform"
  default     = "f1-micro"
}

variable "image" {
  type        = string
  description = "Esta variável deve do tipo string e deverá receber um nome de resource"
  default     = "debian-cloud/debian-9"
}

variable "zone" {
  type        = string
  description = "Em qual zona sua instância irá ficar"
  default     = "us-central1-a"
}

variable "network" {
  type        = string
  description = "Em qual rede sua instância irá ficar"
}

variable "subnetwork" {
  type        = string
  description = "Nome da subrede"
}

variable "access_config_network_tier" {
  type        = string
  description = "Nome da subrede"
  default     = "STANDARD"
}

variable "tags" {
  type        = list(string)
  description = "Quais tags serão utilizadas"
}

variable "allow_stopping_for_update" {
  type        = bool
  description = "Permite parar a VM para poder escalar verticalmente sua instância"
  default     = true
}