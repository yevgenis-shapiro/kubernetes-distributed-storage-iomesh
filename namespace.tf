resource "kubernetes_namespace" "iomesh" {
  metadata {
    annotations = {
      name = var.namespace
    }
    labels = {
      managed-by = var.compartment
    }
    name = var.namespace
  }
}
