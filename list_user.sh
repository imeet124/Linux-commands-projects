#!/bin/bash

############################
# About: This script is list the collbarators of your GitHub project in your organization.
# Input: To run this script, you need to provide username, token of particular GitHub account.
# Owner: Meet 
# Date: 09/08/2024
###########################


helper()

# GitHub API URL
API_URL= "Provide here your API URL for GitHub"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
local endpoint="$1"
local url"${API_URL}/${endpoint}"

  # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}":${TOKEN}" "$url"
}

# Function to list users with read access to the repositiory.
function list_users_with_access {
local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

  # fetch the list of collaborators in the repository
  collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permission.pull ==true) | .login')"

  # Display the list of collaborators on the repository
    if[[ -z "$collborators" ]]; then
       echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
       echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
       echo "$collborators"
    fi
}

# helper function for this script
function helper{
   expected_cmd_args=2
   if [ $# -ne $expected_cmd_args]; then
      echo "please execute the script with required cmd args"
      echo "asd"
}

# Main script
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access

