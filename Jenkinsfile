pipeline {
  agent any
  stages {
    stage('Build') {
      agent any
      steps {
        sh 'docker login https://agiletrailblazers.jfrog.io/ -u $jfroguser -p $pass'
      }
    }

  }
  environment {
    jfroguser = 'subbu'
    pass = 'Subbu123'
  }
}