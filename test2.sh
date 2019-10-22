#!/bin/bash
echo "this script is for more conditions"
#adding commit commands for creating new images
#then uploading images to docker hub and automate the build with every commit
#commands that you will neeed are:

        #sudo docker login (username and password) to config file
        
    #sudo docker tag git_kibana basitkhan237/git-kibana:kibana_image
    #sudo docker tag git_elasticsearch basitkhan237/elasticsearch-logstash:elasticsearch_image
    #sudo docker tag git_logstash basitkhan237/git-logstash:logstash_image
#then pushing all the images to HUB repository
    #docker push basitkhan237/git-kibana
    #docker push basitkhan237/git-elasticsearch
    #docker push basitkhan237/git-logstash
echo "all Done."