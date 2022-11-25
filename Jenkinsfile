pipeline{
	agent any
	
	stages{
		stage('Build'){
			steps{
				sh './mvnw clean install'
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}