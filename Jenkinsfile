pipeline {
    agent any
    environment {
        DOCKER_CREDENTIALS_ID = 'rabiga8'
        DOCKERHUB_PASSWORD = 'Adocker1.'
        DOCKER_IMAGE_NAME = 'your-dockerhub-username/your-image-name'
    }
    stages {
        stage('1. Checkout') {
            steps {
                // Check out the source code from GitHub
                git 'https://github.com/rabiga8/devops-lab3.git'
                sh "git checkout jenkins"
            }
        }
        
        stage('2. Build Maven Project') {
            steps {
               withMaven(globalMavenSettingsConfig: '', jdk: '', maven: 'maven', mavenSettingsConfig: '', traceability: true) {
               sh 'mvn clean package'
              }
            }
        }
        
        stage('3. Docker Build') {
            steps {
                // Build Docker image
                sh 'docker build  -t rabiga8/rabiga_r_image .'
            }
        }
        
        stage('Docker Login') {
            steps {
                // Login to Docker Hub
                withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKER_CREDENTIALS_ID', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
                    sh "docker login -u $DOCKER_CREDENTIALS_ID -p $DOCKERHUB_PASSWORD"
                }
            }
        }
        
        // stage('Docker Push') {
        //     steps {
        //         // Push Docker image to Docker Hub
        //         sh 'docker push your-dockerhub-username/your-image-name'
        //     }
        // }
    }
}
