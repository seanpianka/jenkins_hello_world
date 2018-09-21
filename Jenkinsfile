pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                final foundFiles = findFiles(glob: 'dockerfiles/**/*')
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
