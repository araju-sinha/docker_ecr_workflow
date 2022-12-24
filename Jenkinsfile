
pipeline {
  environment {
    registry = "araju024/new_imge"
    registryCredential = 'doc-cred'
    dockerImage = ''
  }
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/', branch: 'master')
      }
    }
    stage('Building image') {
      steps{
        steps{
          powershell 'docker build -t araju024/node-jen:02'
        }
      }
    }


  }
}
