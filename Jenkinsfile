
pipeline {
  environment {
    registryCredential = 'doc-cred'
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
          bat 'docker build -t araju024/node-jen:02'
        }
      }
    }


  }
}
