variable "vmname" {
    description = "Virtual Machine Name"
    type = string
    default     = "tftestvm"
  
}

variable "nic_name" {
    description = "Network Interface Name"
    type = string
    default     = "tftestvm_nic"
  
}

variable "Rg_name" {
  description = "Resource Group Name"
}

variable "location" {
  description = "resource location"
}

variable "subnet_id" {
  description = "Subnet ID"
  
}