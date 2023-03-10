# Infra API Lambda

Estrutura de infra baseada em IaC, utilizando Terraform implementado em Cloud AWS.

Recursos utilizados abaixo.

* API Gateway
* Lambda Function
* S3
* Cloudwatch
* IAM

### Instalando CLI Terraform

Para instalar o cli que é importante no processo. Siga os passos do Link abaixo.

<https://hashicorp-terraform.awsworkshop.io/030_self_guided_setup/37_install_terraform_cli.html>

### Arquivo terraform.tfvars

Este arquivo é essencial para o funcionamento de implantação dos resources no Cloud. Este arquivo possui 3 variáveis importantes, que devem ser adicionadas antes do comando terraform init

* region - Região na qual estamos implantando a infra
* profile - Profile setado localmente nas credentials da aws
* account_id - É o ID de usuário da AWs que irá provisionar a infra.

## Usage

Abaixo adiciono um passo a passo de como subir o ambiente.

```sh
$ clone https://github.com/viniciusgoliver/infra-api-lambda.git
$ cd infra-api-lambda
$ cd app
$ yarn

** Se quiser testar a aplicação, digitar comando abaixo.

$ yarn start

** Agora vamos para a parte de inicialização do terraform.

$ cd infra-api-lambda
$ cd infra
$ touche terraform.tfvars
*** Adicionar as variaveis abaixo dentro deste novo arquivo criado.

region     = [REGION DA AWS]
profile    = [PROFILE SETADO via aws configure]
account_id = [ID USER AWS]

$ terraform init (lembrando que é necessário ter a cli do terraform já instalada.)
$ terraform validate
$ terraform plan

** Comandos importantes.

$ terraform apply --auto-approve (Serve para já implementar no Cloud a estrutura de infra)
$ terraform destroy --auto-aprove (Serve para destruir tudo que foi criado via comando apply)

```

Esses são os passos básicos para subir e testar o Terraform.
