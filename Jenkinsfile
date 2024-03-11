pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
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
        
        stage('Code Coverage') {
            steps {
                tool 'Maven'
                bat 'mvn jacoco:prepare-agent test jacoco:report'
            }
        }
        
        stage('Docker Build') {
            steps {
                script {
                    // Build Docker image
                    docker.build('lab2appq2:latest')
                }
            }
        }
        
        
        stage('Docker Push') {
            steps {
                script {
                    // Push Docker image to Docker Hub
                    docker.withRegistry('', 'github_credentials') {
                        docker.image('lab2appq2:latest').push()
                    }
                }
            }
        }
    }
}
