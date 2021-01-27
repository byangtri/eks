pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'docker login agiletrailblazers.jfrog.io -u $user -p $pass'
      }
    }

  }
  environment {
    user = 'subbu'
    pass = 'Subbu123'
  }
}