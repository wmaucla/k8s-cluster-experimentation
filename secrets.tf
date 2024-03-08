resource "kubernetes_secret" "mykey" {
  metadata {
    name = "mykey"
  }

  data = {
    mykey = base64encode(var.MY_SECRET)
  }

  type = "Opaque"
}