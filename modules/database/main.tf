provider "google" {
  project = var.project_id
  region  = var.region
}

# PostgreSQL Instance
resource "google_sql_database_instance" "postgres_instance" {
  name             = var.postgres_instance_name
  database_version = var.postgres_version
  region           = var.region

  settings {
    tier = var.postgres_machine_type
  }
  deletion_protection = false
}

resource "google_sql_database" "postgres_db" {
  name     = var.postgres_db_name
  instance = google_sql_database_instance.postgres_instance.name
}

resource "google_sql_user" "postgres_user" {
  name     = var.postgres_user_name
  instance = google_sql_database_instance.postgres_instance.name
  password = var.postgres_password
}

