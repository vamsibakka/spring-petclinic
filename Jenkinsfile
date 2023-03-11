pipeline{
    agent { label 'node1'}
    stages{
        stage ('vcs'){
            steps{
                git url:'git@github.com:vamsibakka/spring-petclinic.git',
                    branch: 'main'
            }
        }
        stage('build'){
            steps{
                sh 'mvn clean package sonar:sonar'
            }
        }
    }
}