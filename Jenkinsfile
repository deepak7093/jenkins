pipeline {
    agent {
        dockerfile true
    }
    stages {
        stage('FetchGITChanges') {
            steps {
    				checkout scm

        			def customImage = docker.build("my-image:${env.BUILD_ID}")
       				customImage.push()
        	}
    	}
	}
}
