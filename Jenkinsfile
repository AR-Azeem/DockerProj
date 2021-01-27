pipeline{
    agent any
    stages{
        stage('Build application'){
            steps{
                sh 'mvn -f pom.xml clean package'
            }
            post{
                success{
                    echo "successfully archieving"
                    archiveArtifacts artifacts : "**/*.war"
                }
            }
        }
        stage('Create Tomcat Image'){
            steps{
                sh "pwd"
                sh "ls -a"
                sh "docker build . -t tomcatsamplewebapp:${env.BUILD_ID}" 
            }
        }
    }      
}