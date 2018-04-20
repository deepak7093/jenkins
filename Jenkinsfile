Jenkinsfile (Declarative Pipeline)
pipeline {
    agent {
        docker { image 'deepak7093/nvm' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}
