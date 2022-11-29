pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                kubectl apply -f backend.yaml
                kubectl apply -f frontend.yaml
                '''
            }
        }
    }
}
