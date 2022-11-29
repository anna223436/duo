pipeline {
    agent any
    stages {
        stage('Build Image') {
            steps {
                sh '''
                docker build -t a2234/duo2 .
                docker push
                '''
            }
        }
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
