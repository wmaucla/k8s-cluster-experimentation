resource "kubernetes_namespace" "velero" {
  metadata {
    labels = {
      name = "velero"
    }
    name = "velero"
  }
}



resource "helm_release" "velero" {
  name      = "velero"
  namespace = "velero"

  repository = "https://vmware-tanzu.github.io/helm-charts"
  chart      = "velero"
  version    = "5.4.1"

  timeout = "300"
  values  = [file("values.yaml")]

  depends_on = [
    kubernetes_namespace.velero
  ]
}