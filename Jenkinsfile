pipeline {
    agent any
    
    stages {
        stage('Build') {
            def server = Artifactory.server 'edge'

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
