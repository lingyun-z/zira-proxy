pipeline {
  agent any

  environment {
    PROJECT_NAME = "zira-proxy"
  }

  stages {
    stage('build') {
      steps {
        sh "docker build -t ${PROJECT_NAME}:latest ."
      }
    }

    stage('deploy') {
      steps {
        sh "docker network create zira -d bridge"
        sh "docker-compose up -d"
      }
    }
  }
}