pipeline {
    agent any

    tools {
        jdk 'jdk-21'   // 👈 Use the same name you configured under "Manage Jenkins → Tools → JDK Installations"
    }

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/aryanbhandari-code/Java_proj_Demo.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project...'
                bat 'java -version'   // 👈 Optional check — confirms correct JDK is used
                bat 'javac -version'
                bat 'javac -cp HospDBMS1/lib/javax.servlet-api-4.0.1.jar -d out HospDBMS1/src/com/hospdbms/pkg/*.java'
            }
        }

        stage('Run') {
            steps {
                echo 'Running the application...'
                bat 'java -cp out com.hospdbms.pkg.Admnlogin'
            }
        }

        stage('Dockerize') {
            steps {
                echo 'Building Docker image...'
                bat 'docker build -t java-demo-app .'
                bat 'docker run -d -p 8080:8080 java-demo-app'
            }
        }
    }
}
