variable "aws_region" {
  description = "AWS region of the EKS cluster"
  type        = string
  default     = "eu-north-1"
}

variable "cluster_name" {
  description = "Name of the existing EKS cluster"
  type        = string
  default     = "mlops-eks"
}

variable "argocd_namespace" {
  description = "Namespace where ArgoCD is installed"
  type        = string
  default     = "infra-tools"
}

variable "argocd_chart_version" {
  description = "Version of the argo-cd Helm chart (argoproj/argo-helm)"
  type        = string
  default     = "9.5.21"
}
