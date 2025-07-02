pipeline {
    agent any
environment {
        DOCKER_IMAGE = 'djilalidernane/my-app:latest'
    }
    stages {
        stage('Pull from Git') {
            steps {
                git branch: 'premier_jour', credentialsId: 'github_access', url: 'https://github.com/dj-devopsformation/devops.git'
            }
        }

        stage('Build') {
            steps {
                echo "build docker image test 1234567987"
            }
        }

        stage('Test') {
            
            steps {
                echo "push docker image test"
            }
        
            }
        
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                // Your deploy steps here
            }
        }
    }
}
