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
  			docker.build("demo")
  			}
			}
  		}

  		stage("Docker push") { 
			agent { label "docker_image_builder"}
  			steps {
			script {
  			docker.withRegistry("https://registry.hub.docker.com", "dockerhub") {
    		docker.image("demo").push("demo:${env.BUILD_ID}")
  			}
  			}
			}
  		}
  	}
}