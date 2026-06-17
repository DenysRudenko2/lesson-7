output "argocd_namespace" {
  description = "Namespace where ArgoCD is deployed"
  value       = helm_release.argocd.namespace
}

output "argocd_chart_version" {
  description = "Deployed argo-cd chart version"
  value       = helm_release.argocd.version
}

output "argocd_port_forward" {
  description = "Command to open the ArgoCD UI locally"
  value       = "kubectl port-forward -n ${var.argocd_namespace} svc/argocd-server 8080:80"
}

output "argocd_admin_password_cmd" {
  description = "Command to read the initial ArgoCD admin password"
  value       = "kubectl -n ${var.argocd_namespace} get secret argocd-initial-admin-secret -o jsonpath='{.data.password}' | base64 -d; echo"
}
