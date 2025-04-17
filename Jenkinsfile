pipeline {  
agent any  
stages {  
stage('Clone Repository') {  
steps {  
git branch: 'main', url: 'https://github.com/NiranjanSurve/DO_Practical05.git'  
}  
}  
stage('Build Docker Image') {  
steps {  
dir('Q_5') {  
script {  
docker.build("nodejs-app", ".")  
}  
}  
}  
}  
stage('Run Docker Container') {  
steps { 
  script {  
                    docker.image("nodejs-app").run("-p 3000:3000")  
                }  
            }  
        }  
    }  
} 
