pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                foundFiles = sh(script: "locate cargo", returnStdout: true)
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
