pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh '''#!/bin/bash
                        echo $(find ~/ -type f -name 'cargo')
                '''
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
