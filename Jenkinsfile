pipeline {

    agent any

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
        
        stage('Clean-up') {
            steps {
                    sh '''
                    ./stages/cleanup/cleanup.sh
                '''
                
            }
        }

        
    }
}
