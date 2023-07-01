variable "project_name" {
  description = "GCP Project name"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
  default     = "southamerica-east1"
}

variable "zone" {
  description = "Google Cloud zone"
  type        = string
  default     = "southamerica-east1-b"
}

variable "repository_id" {
  description = "Google Artifact Registry repository id"
  type        = string
  default     = "spotmusic"
}

variable "cloud_sql_database_version" {
  description = "Google Cloud SQL database version"
  type        = string
  default     = "MYSQL_8_0"
}

variable "cloud_sql_tier" {
  description = "Google Cloud SQL tier prod"
  type        = string
  default     = "db-g1-small"
}

variable "cloud_sql_database_name" {
  description = "Google Cloud SQL database name"
  type        = string
  default     = "spotmusic"
}

variable "cloud_sql_user" {
  description = "Google Cloud SQL user"
  type        = string
  default     = "spotmusic-backend"
}
variable "cloud_sql_password" {
  description = "Google Cloud SQL password"
  type        = string
}