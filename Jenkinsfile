pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh(script: "locate cargo", returnStdout: true)
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
