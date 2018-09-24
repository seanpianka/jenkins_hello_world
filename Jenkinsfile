pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                container('jenkins-slave') {
                    sh 'make'
                    sh 'make tests'
                }
            }
        }
        stage('Test') {
            steps {
                container('jenkins-slave') {
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
