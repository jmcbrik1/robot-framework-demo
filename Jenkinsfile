pipeline
{
    agent any

    stages
    {
        stage('Clean Checkout')
        {
            steps
            {
                // Generated via Jenkins snippet generator
                checkout([$class: 'GitSCM', branches: [[name: '**']],
                    doGenerateSubmoduleConfigurations: false, extensions: [[$class: 'CleanBeforeCheckout']],
                    submoduleCfg: [],
                    userRemoteConfigs: [[credentialsId: 'ObiGitHub', url: 'git@github.com:O3ObijuanKenobi/RobotFrameworkDemo.git']]])
            }

        }
        stage('Setup')
        {
            steps
            {
                sh "./setup.sh"
            }
        }
        stage('Test')
        {
            steps
            {
                sh "./run_robot.sh"
            }
        }
        stage('Publish')
        {
            steps
            {
                robot logFileName: '*log.html',
                    onlyCritical: false,
                    outputFileName: '*output.xml',
                    outputPath: 'robot_logs',
                    reportFileName: '*report.html',
                    passThreshold: 100.0,
                    unstableThreshold: 90.0
            }
        }
    }
}