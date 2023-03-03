pipeline {
    agent any
    parameters {
        string(name: 'region', defaultValue: 'us-east-1', description: 'choose aws region to deploy')
    }

    stages {
        stage('Init') {
            steps {
               sh ('terraform init') 
            }
        }

         stage('Validate, Fmt & Plan') {
            steps {
               sh """
                terraform validate
                terraform fmt
                terraform plan --var-file=./config/dev.tfvars -var 'region=${params.region}'
               """
            }
        }
        
        stage('Action') {
            steps {
                echo "terraform action from the parameter is -->${action}"
                sh """
                terraform ${action} --var-file=./config/dev.tfvars -var 'region=${params.region}' --auto-approve
                """
            }
        }
    }
}