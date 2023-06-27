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
                          git branch: 'main', url: 'https://github.com/thapakrishna0111/pipeline_terraform.git'
                    }
                }
            }

        stage('Plan') {
            steps {
                sh 'terraform init'
                sh "terraform plan"
            }
        }


        stage('Apply') {
            steps {
                sh "terraform apply -auto-approve"
            }
        }
    }

  }
