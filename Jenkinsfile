pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh(script: "find ~/ -type f -name 'cargo' | echo -", returnStdout: true)
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
