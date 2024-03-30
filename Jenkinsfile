pipeline {
    agent any
    
    stages {
        stage('1. Checkout') {
            steps {
                //Check out the source code from GitHub
                git 'https://github.com/rabiga8/devops-lab3.git'
            }
        }
    stages {
    stage("Build") {
      steps {
        git url: 'https://github.com/cyrille-leclerc/multi-module-maven-project'
        withMaven {
          sh "mvn clean verify"
            } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe reports and FindBugs reports
        }
       }
       }
        stage('2. Build Maven Project') {
            steps {
                sh 'OUTPUT=$(mvn --version)'
                sh 'echo "${OUTPUT}"'
            }
        }
        
        // stage('Docker Build') {
        //     steps {
        //         // Build Docker image
        //         sh 'docker build -t your-dockerhub-username/your-image-name .'
        //     }
        // }
        
        // stage('Docker Login') {
        //     steps {
        //         // Login to Docker Hub
        //         withCredentials([usernamePassword(credentialsId: 'docker-hub-credentials', usernameVariable: 'DOCKERHUB_USERNAME', passwordVariable: 'DOCKERHUB_PASSWORD')]) {
        //             sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"
        //         }
        //     }
        // }
        
        // stage('Docker Push') {
        //     steps {
        //         // Push Docker image to Docker Hub
        //         sh 'docker push your-dockerhub-username/your-image-name'
        //     }
        // }
    }
}

