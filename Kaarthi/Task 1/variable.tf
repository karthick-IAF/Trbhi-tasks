variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
}

variable "vnet_name" {
    description = "Name of the virtual network to create"
    default     = "testvnet"
}

variable "vm_name" {
    description = "Name of the virtual machine to create"
    default     = "windows"
}

variable "location" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
  default     = "southeastasia"
}

variable "external_ip" {
    type        = list(string)
    description = "Enter your external IP address to connect VM. Enter the External IP in ["0.0.0.0/0"] format. 
}