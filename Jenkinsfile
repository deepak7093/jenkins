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
  			docker.withRegistry("https://1234567890.dkr.ecr.us-east-1.amazonaws.com", "ecr:us-east-1:demo-ecr-credentials") {
    		docker.image("demo").push("demo:${env.BUILD_ID}")
  			}
  			}
			}
  		}
  	}
}