# Віддалений стейт у S3 (бакет створено в Темі 4).
# ⚠️ У власному акаунті змініть bucket на свій унікальний.
terraform {
  backend "s3" {
    bucket       = "mlops-tfstate-rudenko-152128592418"
    key          = "lesson-7/argocd/terraform.tfstate"
    region       = "eu-north-1"
    encrypt      = true
    use_lockfile = true
  }
}
