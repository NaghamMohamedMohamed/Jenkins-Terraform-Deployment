pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:latest'
            args '-v $PWD:$PWD -w $PWD'
        }
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
