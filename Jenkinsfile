library identifier: 'Practice@jenkins-shared-library', retriever: modernSCM([$class: 'GitSCMSource', remote: 'https://github.com/BiggieBroo/Practice', credentialsId: 'github'])

pipeline {

	agent any

	environment {
		IMAGE_TITLE = "biggiebroo/practice:my-app-2.0"
	}

	stages {

		stage("Docker Login, Build and Push") {
			steps {
				script {
					dockerLogin()
					buildDockerImage("${IMAGE_TITLE}")
					dockerPush("${IMAGE_TITLE}")
				}
			}
		} // end Docker Login, Build and Push

		stage("Deployment") {
			steps {
				script {
					sh "echo 'Deployed'"
				}
			}
		} // end Deployment

	} // end stages


} // end pipeline