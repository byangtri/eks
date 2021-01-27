pipeline {
  agent {
    docker {
      image 'https://agiletrailblazers.jfrog.io/demorepo/agiletrailblazers:latest'
    }

  }
  stages {
    stage('Build') {
      agent any
      steps {
        sh '''docker build
#docker login https://agiletrailblazers.jfrog.io/ -u $jfroguser -p $pass'''
      }
    }

  }
  environment {
    jfroguser = 'subbu'
    pass = 'Subbu123'
  }
}