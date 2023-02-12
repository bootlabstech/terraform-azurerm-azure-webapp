variable "rglock_name" {
  type        = string
  description = "Specifies the name of the Management Lock"
}
variable "lock_level" {
  type        = string
  description = "Specifies the Level to be used for this Lock"
}
//resource_group
variable "resource_group_name" {
  description = "The name of the Resource Group in which to create the Load Balancer."
  type        = string
}

variable "location" {
  description = "Specifies the supported Azure Region where the Load Balancer should be created."
  type        = string
}

//public_ip
variable "public_ip_name" {
  description = " Specifies the name of the Public IP."
  type        = string
}

variable "ip_version" {
  description = "The IP Version to use, IPv6 or IPv4."
  type        = string
}

variable "public_ip_sku" {
  description = "The SKU of the Public IP."
  type        = string
}

variable "public_ip_sku_tier" {
  description = "The SKU Tier that should be used for the Public IP."
  type        = string

}

variable "allocation_method" {
  description = "Defines the allocation method for this IP address. "
  type        = string
}

//load_balancer 
variable "name" {
  description = " Specifies the name of the Load Balancer."
  type        = string
}

variable "sku" {
  description = " The SKU of the Azure Load Balancer."
  type        = string
}

variable "sku_tier" {
  description = "The SKU tier of this Load Balancer. "
  type        = string
}

variable "ip_name" {
  description = "Specifies the name of the frontend IP configuration."
  type        = string
}

//backend_address_pool

variable "backend_name" {
  description = "Specifies the name of the Backend Address Pool."
  type        = string

}

//lb_rule

variable "rule_name" {
  description = "Specifies the name of the LB Rule."
  type        = string
}

variable "protocol" {
  description = "The transport protocol for the external endpoint."
  type        = string
}

variable "frontend_port" {
  description = "The port for the external endpoint. "
  type        = number
}

variable "backend_port" {
  description = "The port used for internal connections on the endpoint. "
  type        = number
}

variable "idle_timeout_in_minutes" {
  description = "Specifies the idle timeout in minutes for TCP connections. "
  type        = number
}

variable "enable_tcp_reset" {
  description = "Is TCP Reset enabled for this Load Balancer Rule?"
  type        = bool
}

variable "enable_floating_ip" {
  description = "Are the Floating IPs enabled for this Load Balncer Rule? "
  type        = bool
}


variable "vnet_resource_group_name" {
  type        = string
  description = "the resource group where the VMs will be created"
}

variable "mysql_server_name" {
  type        = string
  description = "Specifies the name of the MySQL Server. Changing this forces a new resource to be created. This needs to be globally unique within Azure."
}

variable "vnet_name" {
  type        = string
  description = "The name of vnet"
}

variable "subnet_id" {
  type        = string
  description = "The self link of subnet"
}

variable "administrator_login" {
  type        = string
  description = "(optional) describe your variable"
}

variable "sku_name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "storage_mb" {
  type        = number
  description = "(optional) describe your variable"
}

variable "mysql_version" {
  type        = string
  description = "(optional) describe your variable"
}

variable "auto_grow_enabled" {
  type        = bool
  description = "Enable/Disable auto-growing of the storage. Storage auto-grow prevents your server from running out of storage and becoming read-only"
  default     = true
}

variable "backup_retention_days" {
  type        = number
  description = "Backup retention days for the server, supported values are between 7 and 35 days."
  default     = 7
}

variable "geo_redundant_backup_enabled" {
  type        = bool
  description = " Turn Geo-redundant server backups on/off. This allows you to choose between locally redundant or geo-redundant backup storage in the General Purpose and Memory Optimized tiers."
  default     = false
}

variable "infrastructure_encryption_enabled" {
  type        = bool
  description = "Whether or not infrastructure is encrypted for this server. Defaults to false"
  default     = false
}

variable "public_network_access_enabled" {
  type        = bool
  description = "Whether or not public network access is allowed for this server. Defaults to true."
  default     = true
}

variable "ssl_enforcement_enabled" {
  type        = bool
  description = "Specifies if SSL should be enforced on connections. Possible values are true and false"
  default     = true
}

variable "ssl_minimal_tls_version_enforced" {
  type        = string
  description = "The minimum TLS version to support on the sever. Possible values are TLSEnforcementDisabled, TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_2."
  default     = "TLS1_2"
}



variable "redis_name" {
  description = "The name of the Redis instance."
  type        = string

}
# variable "location" {
#   description = "The location of the resource group."
#   type        = string

# }
# variable "resource_group_name" {
#   description = "The name of the Resource group"
#   type        = string

# }
variable "capacity" {
    description = "The size of the Redis cache to deploy. Valid values for a SKU family of C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4, 5"
    type= string  
}
variable "family" {
  description = "The SKU family/pricing group to use"
  type        = string

}
variable "redis_sku_name" {
  description = "The SKU of Redis to use. Possible values are Basic, Standard and Premium."
  type        = string

}
variable "enable_non_ssl_port" {
  description = "Enable the non-SSL port (6379) - disabled by default."
  type = bool

}
variable "redis_public_network_access_enabled" {
    description = "Whether or not public network access is allowed for this Redis Cache."
    type= bool
}

variable "redis_version" {
  description = "Redis version."
  type        = string

}
# variable "zones" {
#   description = " Specifies a list of Availability Zones in which this Redis Cache should be located."

# }
variable "identity" {
    description = "region of deployment"
    type= string  
        default = "false"

}
variable "type" {
    description = "Specifies the type of Managed Service Identity that should be configured on this Redis Cluster. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned"
    type= string  
}
variable "patch_schedule" {
    description = "region of deployment"
    type= string  
    default = "false"
}
variable "day_of_week" {
    description = " the Weekday name - possible values include"
    type= string  
}


# cluster
variable "aks_name" {
  description = "The cluster name for the AKS resources created in the specified Azure Resource Group."
  type        = string
}

# variable "resource_group_name" {
#   description = "The resource group name to be imported"
#   type        = string
# }

# variable "location" {
#   description = "The Azure region in which all resources in this example should be provisioned."
#   type        = string
# }

variable "dns_prefix" {
  description = "(The prefix for the resources created in the specified Azure Resource Group"
  type        = string
}


# default_node_pool

variable "vm_size" {
  type        = string
  description = "VM Size of node pool."
}

variable "aks_subnet_id" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "os_disk_size_gb" {
  description = "Disk size of nodes in GBs."
  type        = number
}

variable "zones" {
  type        = list(string)
  description = "A list of Availability Zones across which the Node Pool should be spread."
}

variable "primary_min_count" {
  type        = number
  description = "Minimum number of nodes in a pool"
}

variable "primary_max_count" {
  type        = number
  description = "Maximum number of nodes in a pool"
}

variable "primary_max_pods" {
  type        = number
  description = "Maximum number of pods in a nodes"
  default     = 30
}

variable "secondary_min_count" {
  type        = number
  description = "Minimum number of nodes in a pool"
}

variable "secondary_max_count" {
  type        = number
  description = "Maximum number of nodes in a pool"
}

variable "secondary_max_pods" {
  type        = number
  description = "Maximum number of pods in a nodes"
  default     = 30
}
variable "os_sku" {
  type        = string
  description = "disk type in a nodes"
}
