#!bin/bash

# Pre requis : 
# apt-install jq

# Variables GitLab
GITLAB_TOKEN="VOTRE TOKEN"
GITLAB_URL="mongitlab.domaine.fr"

# Query pour recuperer tous les projets GitLab
results=`curl --header "PRIVATE-TOKEN: ${GITLAB_TOKEN}" --request GET "https://${GITLAB_URL}/api/v4/projects?per_page=50000" |  jq '.[]["http_url_to_repo"]'`

# Iteration sur l'ensemble des projets pour les cloner
for item in $results
    do
    to_download=`echo $item | tr -d '"'` 
    git clone $to_download # le clone se fait via HTTPS (peut etre faire avec du SSH si probleme d'identification)
    done
