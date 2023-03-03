pipeline {
    agent any

    stages {
        stage('Init') {
            steps {
               sh ('terraform init') 
            }
        }

         stage('Validate, Fmt & Plan') {
            steps {
               sh ('terraform validate')
               sh ('terraform fmt')
               sh ('terraform plan')
            }
        }
        
        stage('Action') {
            steps {
                echo "terraform action from the parameter is -->${action}"
                sh('terraform ${action} --var-file=./config/dev.tfvars --auto-approve')
            }
        }
    }
}