resource "google_artifact_registry_repository" "my-repo" {
  location = var.region
  repository_id = var.repository_id
  description = "Imagens Docker"
  format = "DOCKER"
}