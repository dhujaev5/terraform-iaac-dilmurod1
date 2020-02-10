node {
    properties([pipelineTriggers([cron('* * * * *')])])
    stage("Stage1"){
        git 'https://github.com/farrukh90/packer.git'
    }  
    stage("Stage2"){
        echo "Hello World"
    }  
    stage("Stage3"){
        echo "Hello World"
    }  
    stage("Stage4"){
        echo "Hello World"
    }    
}