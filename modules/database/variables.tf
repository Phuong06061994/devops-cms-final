# General Settings
variable "project_id" {
  description = "Google Cloud Project ID"
}

variable "region" {
  description = "Google Cloud Region"
}

# PostgreSQL Variables
variable "postgres_instance_name" {
  description = "PostgreSQL Instance Name"
  default     = "postgres-instance"
}

variable "postgres_version" {
  description = "PostgreSQL Version"
  default     = "POSTGRES_14"
}

variable "postgres_machine_type" {
  description = "PostgreSQL Machine Type"
  default     = "db-f1-micro"
}

variable "postgres_db_name" {
  description = "PostgreSQL Database Name"
  default     = "mydatabase"
}

variable "postgres_user_name" {
  description = "PostgreSQL User Name"
  default     = "myuser"
}

variable "postgres_password" {
  description = "PostgreSQL User Password"
  default     = "mypassword"
}

# Redis Variables
variable "redis_instance_name" {
  description = "Redis Instance Name"
  default     = "redis-instance"
}

variable "redis_tier" {
  description = "Redis Tier"
  default     = "BASIC"
}

variable "redis_memory_size_gb" {
  description = "Redis Memory Size in GB"
  default     = 1
}

variable "redis_authorized_network" {
  description = "Redis Authorized Network"
  default     = "default"
}

variable "network_name" {
  type = string
  description = "network name"
}


variable "private_subnet_1" {
  description = "Private subnet 1 for nodepool 1"
  type        = string
}
