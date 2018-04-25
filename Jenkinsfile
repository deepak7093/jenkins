pipeline {
    stages {
            stage 'Checkout' {
  			git 'ssh://git@github.com:irwin-tech/docker-pipeline-demo.git'
  			}
  			stage 'Docker build' {
  			agent { label 'docker_image_builder'}
  			docker.build('demo')
  			}

  			stage 'Docker push' { 
  			docker.withRegistry('https://1234567890.dkr.ecr.us-east-1.amazonaws.com', 'ecr:us-east-1:demo-ecr-credentials') {
    		docker.image('demo').push('demo:${env.BUILD_ID}')
  				}
  			}
    }
}
