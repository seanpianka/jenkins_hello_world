pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh(script: '''#!/bin/bash
                        echo $(find ~/ -type f -name 'cargo')
                ''', returnStdout: true)
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
