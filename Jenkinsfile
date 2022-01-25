pipeline {
  agent any
  stages {
    stage ("Terraform init script") {
      steps {
        sh "terraform workspace new dev"
        sh "terraform init"
        sh "terraform apply -var-file=dev.tfvars -auto-approve"
      }
    }  
  }
}
