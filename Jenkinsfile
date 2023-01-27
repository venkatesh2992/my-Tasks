pipeline {
  agent any
  stages {
    stage('Node1') {
      parallel {
        stage('stage1') {
          steps {
            sh 'echo "From stage1"'
            sh 'echo "From stage1.0"'
          }
        }

        stage('stage2') {
          steps {
            sh 'echo "stage1.2"'
          }
        }

        stage('stage3') {
          steps {
            sh 'echo "stage1.3"'
          }
        }

        stage('stage4') {
          steps {
            sh 'echo "stage 4"'
          }
        }

        stage('stage5') {
          steps {
            sh 'echo "stage5"'
          }
        }

      }
    }

    stage('NODE2') {
      parallel {
        stage('stage2') {
          steps {
            sh 'echo "stage1"'
          }
        }

        stage('stage 2') {
          steps {
            sh 'echo "stage2"'
          }
        }

        stage('stage3') {
          steps {
            sh 'echo "stage3"'
          }
        }

        stage('stage4') {
          steps {
            sh 'echo "stage4"'
          }
        }

        stage('stage5') {
          steps {
            sh 'echo "stage5"'
          }
        }

      }
    }

    stage('Node3') {
      steps {
        sh 'echo "Node3"'
      }
    }

  }
}