resource "helm_release" "iomesh" {
  name       = var.name
  repository = "http://iomesh.com/charts"
  chart      = "iomesh"
  version    = var.helm_chart_version
  namespace  = var.namespace
  timeout    = 600

  set {
    name  = "iomesh.chunk.replicaCount"
    value = "3"
  }

  set {
    name  = "diskDeploymentMode"
    value = "hybridFlash"
  }

  set {
    name  = "platform"
    value = ""
  }

  depends_on = [
    kubernetes_namespace.iomesh,
  ]
}
