variable "my_domain" {
    description = "Domain Name of the Elastic Search."
    default = "verizonesdomainpoc"
}

variable "es_version" {
    description = "Managed AWS ES version"
    default = "7.10"
}

variable "node_instance_type" {
  description = "Instance type of cluster node."
  default     = "m4.large.elasticsearch"
}

variable "master_instance_type" {
  description = "Instance type of cluster node."
  default     = "t3.small.elasticsearch"
}

variable "ebs_volume_size" {
  type        = number
  description = "EBS volumes for data storage in GB"
  default     = 10
}

variable "ebs_volume_type" {
  type        = string
  default     = "gp2"
  description = "Storage type of EBS volumes"
}

variable "ebs_iops" {
  type        = number
  default     = 0
  description = "The baseline input/output (I/O) performance of EBS volumes attached to data nodes. Applicable only for the Provisioned IOPS EBS volume type"
}