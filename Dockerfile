pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t si-app .'
            }
        }
        stage('Run') {
            steps {
                sh 'docker run -d -p 89:80 si-app'
            }
        }
    }
}
