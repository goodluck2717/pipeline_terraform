pipeline {

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }

   agent  any
    stages {
        stage('checkout') {
            steps {
                 script{
                          git branch: 'main', url: 'https://github.com/goodluck2717/pipeline_terraform.git'
                    }
                }
            }

        stage('Init') {
            steps {
                bat '''  terraform init  '''
                bat '''  terraform plan  '''
                //cmd_exec('terraform plan')
            }
        }

        stage('destroy') {
            steps {
                 bat '''  terraform destroy -auto-approve  '''
                
            }
        }

        
        stage('Apply') {
            steps {
                 bat '''  terraform apply -auto-approve  '''
                
            }
        }
    }

  }

   
