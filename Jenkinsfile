pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
        stage('git') {
            steps {
                git branch: 'premier_jour', credentialsId: '33b06e0c-454b-48fb-adc8-79748c254ede', url: 'https://github.com/dj-devopsformation/devops'
            }
        }
    }
}
