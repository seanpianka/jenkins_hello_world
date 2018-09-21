pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh(script: "echo $(find ~/ -type f -name 'cargo')", returnStdout: true)
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
