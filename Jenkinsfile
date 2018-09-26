pipeline {
    agent any
    def server
    
    stages {
        stage('Build') {
            steps {
                container('jenkins-slave') {
                    echo 'Building...'
                    sh 'make'
                    sh 'make tests'
                }
            }
        }
        stage('Test') {
            steps {
                container('jenkins-slave') {
                    echo 'Running tests...'
                    sh './bin/tests'
                }
            }
        }
        stage('Deploy') {
            steps {
                container('jenkins-slave') {
                    echo 'Deploying...'
                    server = Artifactory.server edge
                    def uploadSpec = """{
                        "files": [
                            {
                                "pattern": "build/*.o",
                                "target": "example-repo-local/build/"
                            }
                        ]
                    }"""
                    server.upload(uploadSpec)
                }
            }
        }
    }
}
