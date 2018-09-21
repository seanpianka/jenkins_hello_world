pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                container('tee3/jenkinsci-jnlp-slave-boostcpp') {
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
