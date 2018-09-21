pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'find / -name "cargo"'
                sh 'cargo build'
            }
        }
        stage('Test') {
            steps {
                sh 'cargo test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
