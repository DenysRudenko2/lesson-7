# ArgoCD як Helm-реліз через Terraform у namespace infra-tools.
resource "helm_release" "argocd" {
  name             = "argocd"
  repository       = "https://argoproj.github.io/argo-helm"
  chart            = "argo-cd"
  version          = var.argocd_chart_version
  namespace        = var.argocd_namespace
  create_namespace = true

  # Усі значення чарту винесені в окремий файл
  values = [file("${path.module}/values/argocd-values.yaml")]

  # Дочекатись готовності всіх подів ArgoCD
  wait    = true
  timeout = 600
}
