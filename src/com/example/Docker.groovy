#!/usr/bin/env groovy
package com.example

class Docker implements Serializable {
	def script
	
	Docker(script) {
		this.script = script
	}

	def dockerLogin() {
		script.withCredentials([script.usernamePassword(credentialsId: 'docker', usernameVariable: 'USER', passwordVariable: 'PASS')]) {
			script.sh "echo $PASS | docker login -u $USER --password-stdin"
		}
	}

	def buildDockerImage(String imageName) {
		script.sh "docker build -t $imageName ."
	}

	def dockerPush(String imageName) {
		script.sh "docker push $imageName"
	}

}