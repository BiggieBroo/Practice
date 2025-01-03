library identifier: 'Practice@jenkins-shared-library', retriever: modernSCM([$class: 'GitSCMSource', remote: 'https://github.com/BiggieBroo/Practice', credentialsId: 'github'])

pipeline {
	// agent any
	agent any
	// environment
	environment {
		IMAGE_TITLE = "biggiebroo/practice:myapp-2.0"
	}

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
					sh "echo 'Deployment'"
				}
			}
		} // end Deployment

	} // end stages

} // end pipeline