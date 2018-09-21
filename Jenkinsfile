pipeline {
    agent { docker 'tee3/jenkinsci-jnlp-slave-boostcpp' }

    stages {
        stage('Build') {
            steps {
                sh 'make'
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
