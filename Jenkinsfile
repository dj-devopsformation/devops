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
                echo "start building docker image"
                sh 'docker build -t $DOCKER_IMAGE .'
            }
        }

        stage('Push to docker hub') {
            
            steps {
                echo "push docker image test"
             
                withCredentials([usernamePassword(credentialsId: 'jenkins_dockerhub_test', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                    sh """
                        echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
                        docker push $DOCKER_IMAGE
                        docker logout
                    """
                
            }
            
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
