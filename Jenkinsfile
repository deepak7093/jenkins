pipeline {
	agent {
    	node { label 'docker_image_builder' }
    }
    stages {
    	stage("Checkout") {
    		steps {
  			checkout scm
  			}
  		}

  		stage("Docker build") {
			agent { label "docker_image_builder"}
  			steps {
			script {
  			docker.build("deepak7093/demo:${env.BUILD_ID}")
  			}
			}
  		}

  		stage("Docker push") { 
			agent { label "docker_image_builder"}
  			steps {
			script {
  			docker.withRegistry("https://registry.hub.docker.com", "dockerhub") {
    		Image = docker.image("deepak7093/demo:${env.BUILD_ID}")
			Image.push()
  			}
  			}
			}
  		}
  	}
}