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
                sh 'nmp ci'
            }
        }

        stage("lancer les tests "){
            steps{
                sh 'npx '
            }
        }
    }
}