
pipeline {
  agent any
  stages {
    stage('Checkout Code') {
      steps {
        git(url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/', branch: 'master')
      }
    }
    stage('Build') {
      steps {
        sh 'docker build -t araju024/node_jenkins:09-lat
      }
    }


  }
}
