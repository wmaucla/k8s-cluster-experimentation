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
export KUBE_CONFIG_PATH=~/.kube/config
```

3. Testing out changes

```bash
terraform init
terraform plan
terraform apply -autoapprove
```


### Installation of CDK8s

```bash
npm install -g cdk8s-cli
```

