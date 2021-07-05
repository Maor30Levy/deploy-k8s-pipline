pipeline {

    agent any
    environment {
            AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
            AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
            MONGODB = credentials('MONGODB')
        }
    stages {
        stage('Permissions-Setup') {
            steps {
                sh '''
                    echo "***** Setting up permissions ******"
                    chmod -R +x ./stages
                '''
            }
        }
        
        stage('Deploy') {
            steps {
                    sh '''
                    ./stages/deploy/deploy.sh
                '''
                
            }
        }
        
    }
}
