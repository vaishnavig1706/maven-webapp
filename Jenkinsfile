pipeline {

    agent any

    tools {
        maven 'Maven'
    }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/<your-username>/maven-webapp.git'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t maven-webapp:v1 .'
            }
        }

        stage('Deploy Container') {
            steps {
                sh '''
                docker rm -f webapp || true
                docker run -d --name webapp -p 8080:8080 maven-webapp:v1
                '''
            }
        }
    }
}
