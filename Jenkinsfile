pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh '''sudo systemctl start docker
docker login agiletrailblazers.jfrog.io -u $jfroguser -p $pass'''
      }
    }

  }
  environment {
    jfroguser = 'subbu'
    pass = 'Subbu123'
  }
}