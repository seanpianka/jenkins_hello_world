pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh('find ~/ -type f -name cargo | tee url')
                sh('cat url')
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
