resource "helm_release" "milvus_operator" {
  name       = "milvus-operator"
  namespace  = "milvus-operator"
  chart      = "https://github.com/zilliztech/milvus-operator/releases/download/v0.9.7/milvus-operator-0.9.7.tgz"
  wait       = true
  create_namespace = true
}
