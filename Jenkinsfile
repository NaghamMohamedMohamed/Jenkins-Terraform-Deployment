pipeline {
    agent {
        docker {
            image 'hashicorp/terraform:latest' 
            args '--entrypoint=""'
        }
    }

    environment {
        TF_IN_AUTOMATION = 'true'
    }

    stages {
        stage('Terraform Apply') {
            steps {
                withCredentials([[
                    $class: 'AmazonWebServicesCredentialsBinding',
                    credentialsId: 'aws-creds-id'
                ]]) {
                    sh '''
                        export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
                        export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

                        rm -rf Jenkins-Terraform-Deployment
                        git clone https://github.com/NaghamMohamedMohamed/Jenkins-Terraform-Deployment.git
                        cd Jenkins-Terraform-Deployment

                        terraform init
                        terraform apply --auto-approve 
                    '''
                }
            }
        }
    }
}
