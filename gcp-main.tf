resource "google_artifact_registry_repository" "docker-repo" {
  location = var.region
  repository_id = var.repository_id
  description = "Imagens Docker"
  format = "DOCKER"
}

resource "google_sql_database" "database_deletion_policy" {
  name     = "mysql-spotmusic-database"
  instance = google_sql_database_instance.mysql-instance.name
  deletion_policy = "ABANDON"
}

resource "google_sql_database_instance" "mysql-instance" {
  name             = "mysql-spotmusic-instance"
  region           = var.region
  database_version = var.cloud_sql_database_version
  settings {
    tier = var.cloud_sql_tier
  }

  deletion_protection  = "true"
}

resource "google_sql_database" "mysql-database" {
  name = var.cloud_sql_database_name
  instance = "${google_sql_database_instance.mysql-instance.name}"
  charset = "utf8"
  collation = "utf8_general_ci"
}

resource "google_sql_user" "mysql-users" {
  name = var.cloud_sql_user
  instance = "${google_sql_database_instance.mysql-database.name}"
  password = var.cloud_sql_password
}