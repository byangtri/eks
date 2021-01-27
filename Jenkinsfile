pipeline {
  agent any
  stages {
    stage('Build') {
      agent {
        docker {
          image 'agiletrailblazers.jfrog.io/demorepo/agiletrailblazers'
        }

      }
      steps {
        sh '''docker login agiletrailblazers.jfrog.io -u $user -p $pass
docker build'''
      }
    }

    stage('Docker Run') {
      agent {
        docker {
          image 'agiletrailblazers.jfrog.io/demorepo/agiletrailblazers'
        }

      }
      steps {
        sh 'docker run -p 8080:8080 '
      }
    }

  }
  environment {
    user = 'subbu'
    pass = 'Subbu123'
  }
}