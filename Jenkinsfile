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

        stage('Plan') {
            steps {
                cmd_exec('terraform init')
                cmd_exec('terraform plan')
            }
        }


        stage('Apply') {
            steps {
                cmd_exec('terraform apply -auto-approve') 
            }
        }
    }

  }

   
