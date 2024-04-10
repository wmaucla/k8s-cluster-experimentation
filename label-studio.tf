resource "kubernetes_namespace" "label_studio" {
  metadata {
    labels = {
      name = "label-studio"
    }
    name = "label-studio"
  }
}


resource "helm_release" "label_studio" {
  name       = "label-studio-installation"
  namespace  = kubernetes_namespace.label_studio.metadata[0].name
  chart      = "label-studio"
  repository = "https://charts.heartex.com/"

  version = "1.4.0"
}