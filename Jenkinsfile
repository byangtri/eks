pipeline {
  agent {
    docker {
      image 'agiletrailblazers.jfrog.io/demorepo/agiletrailblazers:latest'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build'
      }
    }

  }
  environment {
    jfroguser = 'jenkins'
    pass = 'Agile2021'
  }
}