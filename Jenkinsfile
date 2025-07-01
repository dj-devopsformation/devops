pipeline {
    agent any

    stages {
        stage('pull from Git') {
            steps {
                git branch: 'farouk', credentialsId: 'git_test', url: 'https://github.com/dj-devopsformation/devops.git'
                                      }
        }

        stage('Build') {
            steps {
                echo 'Building project...'
            }
        }
    }
}
