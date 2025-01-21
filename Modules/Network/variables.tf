variable "Vnetname" {
    description = "Vnet Name"
    type = string
    default     = "VNET-WE-TEST-COMPUTE"  
}

variable "VnetAddressSpace" {
  description = "value of the address space"
    type = string
    default     = "192.168.1.0"
}

variable "SubnetAddressSpace" {
    description = "value of the subnet address space"
    type = string
    default     = "192.168.1.128/25"
  
}

variable "Rg_name" {
  description = "Resource Group Name"
}

variable "location" {
  description = "resource location"
}