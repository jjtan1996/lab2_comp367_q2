pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                // Use Maven from global tool configuration
                tool 'Maven'
                bat 'mvn clean package'
            }
        }
        stage('Test') {
        	steps {
        		tool 'Maven'
        		bat 'mvn test'
        	}
        }
    }
}