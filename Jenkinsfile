
pipeline {
  environment {
    registryCredential = 'doc-cred'
  }
  agent none
  stages {
    stage('Checkout Code') {
      steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: '35c95e91-8e6c-41f0-b9a7-168d5a1fc868', url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/']]])
//         git credentialsId: 'git-cred', url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/'
//    #       git(url: 'https://github.com/araju-sinha/docker_ecr_workflow.git/', branch: 'master')
      }
    }
    stage('listing image') {
      steps {
        bat '''docker images'''
      }
    }
    stage('Building image') {
      steps {
        bat '''docker build -t mynode-img .'''
//           dockerImage = docker.build("my-node-img:03")
      }
    }
//     stage('Deploy Image') {
//       steps{
//         script {
//            docker.withRegistry( '', registryCredential ) {
//              dockerImage.push()
//           }
//         }
//       }
//     }

  }
}
