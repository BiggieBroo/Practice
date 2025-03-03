library: 'Practice@jenkins-shared-library', retriever: modernSCM([$class: 'GitSCMSource', remote: 'https://github.com/BiggieBroo/Practice', credentialsId: 'docker'])

pipeline {

	agent any

	// Environment
	environment {
		IMAGE_TITLE = "biggiebroo/practice:my-app-1.0"
	}

	// Stages
	stages {

		stage("Login, Build and Push") {
			steps {
				script {
					dockerLogin()
					buildDockerImage("${IMAGE_TITLE}")
					dockerPush("${IMAGE_TITLE}")
				}
			}
		} // end Login, Build and Push

		stage("Deployment") {
			steps {
				script {
					sh "echo 'Hello World !'"
				}
			}
		}

	} // end stages

} // end pipeline