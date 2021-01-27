pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'docker login agiletrailblazers.jfrog.io -u $username -p $pass'
      }
    }

  }
  environment {
    username = 'subbu'
    pass = 'Subbu123'
  }
}