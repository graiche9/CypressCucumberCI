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
                sh 'npx cypress run --reporter'
            }
        }

    }

    post {
        always {
        cucumber buildStatus: 'UNSTABLE',
                failedFeaturesNumber: 1,
                failedScenariosNumber: 1,
                skippedStepsNumber: 1,
                failedStepsNumber: 1,
                classifications: [
                        [key: 'Commit', value: '<a href="${GERRIT_CHANGE_URL}">${GERRIT_PATCHSET_REVISION}</a>'],
                        [key: 'Submitter', value: '${GERRIT_PATCHSET_UPLOADER_NAME}']
                ],
                reportTitle: 'My report',
                fileIncludePattern: '**/*.cucumber.json',
                sortingMethod: 'ALPHABETICAL',
                trendsLimit: 100
         }
    }

    
}