# K8s Cluster Experimentation

Experimentation with building and operating a k8s cluster


1. Adding in terraform upgrades

```bash
brew install asdf
asdf plugin-add terraform
asdf install terraform latest
```

2. Creating the minikube cluster

```bash
minikube start --profile cert-manager-upgrade
```

3. Testing out changes

```bash
terraform init
terraform plan
terraform apply
```
