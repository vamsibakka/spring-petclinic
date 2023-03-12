pipeline{
    agent { label 'node1'}
    stages{
        stage ('vcs'){
            steps{
                git url:'https://github.com/vamsibakka/spring-petclinic.git',
                    branch: 'main'
            }
        }
        stage('build'){
            steps{
                withSonarQubeEnv('sonar'){
                sh """
                 export PATH="/usr/lib/jvm/java-17-openjdk-amd64/bin:$PATH"
                 mvn clean package sonar:sonar
                 """
            }
            }
        }
    }
}