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
                container('jenkins-slave') {
                    sh 'make tests'
                    sh './bin/tests'
                }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
