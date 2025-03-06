pipeline{

    agent {
        docker {
            image 'cypress/browsers'
            args '--entrypoint=""'
        }
    }

    stages{
        stage("installer les dependences"){
            steps{
                sh 'npm ci'
            }
        }

        stage("lancer les tests "){
            steps{
                sh 'npx cypress run'
            }
        }

    }


    
}