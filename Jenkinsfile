pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh '''
                docker build -t gcr.io/lbg-python-cohort-8/anna-duo:latest -t gcr.io/lbg-python-cohort-8/anna-duo:$BUILD_NUMBER .
                '''
            }
        }
        stage('Push') {
            steps {
                sh '''
                docker push gcr.io/lbg-python-cohort-8/anna-duo:latest
                docker push gcr.io/lbg-python-cohort-8/anna-duo:$BUILD_NUMBER
                '''
            }
        }
        stage('Deploy') {
            steps {
                sh '''
                kubectl apply -f backend.yaml
                kubectl apply -f frontend.yaml
                kubectl rollout restart deployment backend --namespace=production
                '''
            }
        }
        stage('Clean Up') { 
            steps {
                sh '''
                docker system prune -a --force
                '''
            }
        }
    }
}
