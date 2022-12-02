pipeline{
	agent {
        label 'ubuntu'
    }
	
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
		stage('Deploy'){
			steps{
				echo "Deploying to Tomcat server...."
				sh 'ansible-playbook /Ansible/deployment.yml --extra-vars "ansible_sudo_pass=pass"'
			}
		}
	}
	post{
		always{
			cleanWs()
		}
	}
}