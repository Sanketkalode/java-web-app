pipeline{
	agent any
	
	stages{
		stage('Build'){
			steps{
				sh 'chmod +x mvnw'
				sh './mvnw clean install'
			}
			post{
				success{
					archiveArtifacts artifacts: 'target/java-web-app.war', followSymlinks: false
				}
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}