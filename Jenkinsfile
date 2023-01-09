pipeline {
  agent any
  stages {
    stage('stage1') {
      steps {
        sh 'echo "From stage1"'
        sh 'echo "From stage1.0"'
      }
    }

    stage('stage2') {
      parallel {
        stage('stage2') {
          steps {
            sh 'echo "From stage2"'
          }
        }

        stage('stage2.1') {
          steps {
            sh '''sleep 5
echo "From Prallel stage2.1"'''
          }
        }

        stage('stage2.2') {
          steps {
            sh '''sleep 5
echo "From prallel from stage2.2"'''
          }
        }

        stage('stage2.3') {
          steps {
            sh '''sleep 5
echo "From prallel stage2.3"'''
          }
        }

      }
    }

    stage('stage3') {
      steps {
        sh 'echo "From stage3"'
      }
    }

  }
}