pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                container('jenkins-slave') {
                    sh 'make'
                }
            }
        }
        stage('Test') {
            steps {
                sh 'make tests'
                sh './bin/tests'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
