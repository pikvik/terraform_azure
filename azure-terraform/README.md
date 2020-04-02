# azure-terraform

## Terraform Steps:

1. Create azure storage with name <b>terraformstoarge</b>.
2. Run command <b>terraform init</b>.
3. This command will create container named <b>tfstate</b> inside storage and terraform state file named <b>dev.terraform.tfstate</b>.
4. Run command <b>terraform plan -var="client_secret=azure_client_secret"</b>.
5. This command will display a list of resources are going to add/modify/delete.
6. Run command <b>terraform apply -var="client_secret=azure_client_secret"</b>.
7. This command will apply all the displayed changed on azure after user confirmation.

## Application Code:

1. We are using spritg boot application for deployment on kubernetes cluster using helm charts.
2. Run command <b>az login</b>
3. This command will authenticate user to perform actions on azure cloud.
4. Run command <b>az acr build --image hello-world:$image_tag --registry appregistryterraform --file Dockerfile .</b>
5. This command will build the docker image and push to azure container registry with the declared tag.

## Kubernetes Steps:

1. Create helm chart with name <b>generic-chart</b> that can be utilized across multiple services deployments.
2. Create values file for per service.
3. Run command <b>helm upgrade --install --debug hello-world-app --namespace dev ./generic-chart/ --values ../dev/ms/values.yaml --set container_properties.image.tag=$image_tag --kube-context=dev-aks-cluster</b>
4. This command will install/upgrade helm charts on kubernetes cluster under dev namespace with specified values file and override specific properties.

## Azure Devops Pipeline Steps:

1. Pull latest code from github master branch.
2. Terraform version.
3. Terraform Initialisation.
4. Terraform Plan.
5. Terraform Apply.
6. Build code and generate packge
7. Build and push an image to container registry
8. Helm install/upgrade release
  
<b>Note:</b> As mentioned in given assesment that helm 3 need to used. In Azure Devops pipeline step <b>Helm install or upgrade release</b> Azure is using helm 3 command <b>helm ls</b>, which need to specify namespace, unlike helm 2 where namespace is not required. Beacuse of this command azure devops pipeline is showing error.

This is the link for above issue.
https://github.com/helm/helm/issues/6992

  
  
  

