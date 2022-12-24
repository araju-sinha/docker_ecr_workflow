
pipeline {
  environment {
    registryCredential = 'doc-cred'
  }
  agent { dockerfile true }
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/', branch: 'master')
      }
    }
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build("my-node-img:03")
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }

  }
}
