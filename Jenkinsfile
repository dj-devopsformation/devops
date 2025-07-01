pipeline {
    agent any

    stages {
        stage('Pull from Git') {
            steps {
                git branch: 'premier_jour', credentialsId: 'github_access', url: 'https://github.com/dj-devopsformation/devops.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t my-app:latest .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing...123'
                // Your test steps here
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
