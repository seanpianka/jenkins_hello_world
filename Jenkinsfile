pipeline {
    agent any

    stages {
        stage('Build') {
            foundFiles = sh(script: "locate cargo", returnStdout: true)
            steps {
                echo foundFiles
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
