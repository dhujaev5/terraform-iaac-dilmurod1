node {
    properties([pipelineTriggers([cron('* * * * *')])])
    stage("Stage1"){
        git 'https://github.com/farrukh90/packer.git'
    }  
    stage("Stage2"){
        echo "Hello World"
        sleep 3
    }  
    stage("Stage3"){
        node('worker'){
        echo "Hello World"}
    }  
    stage("Timestamp"){
        timestamps {
      echo "hello"
}
        
    }
    stage("Script"){
        sh label: '', script:
        '''#!/bin/bash
            if [ ! -f /tmp/foo.txt ] ;
            then
                echo "File not found!"
                echo "Creating file"
                touch "/tmp/foo/txt"
            fi
        '''       
    }
    stage("Stage4"){
        echo "Hello World"
        slackSend channel: 'nagios_alerts' , message: 'Completed'
    }    
}