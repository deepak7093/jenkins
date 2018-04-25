pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('FetchGITChanges') {
            steps {
                  checkout scm
                  docker.withRegistry('https://registry.example.com', 'credentials-id') {
            	  def customImage = docker.build("my-image:${env.BUILD_ID}")
    			  customImage.push()
    				
            }
        }
    }
}
}
