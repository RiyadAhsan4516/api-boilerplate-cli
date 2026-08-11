#!/bin/bash

echo "// ********************************************"
echo "// *                                          *"
echo "// *        SELECT FRAMEWORK TO USE          *"
echo "// *                                          *"
echo "// ********************************************"
echo "FOR PRIVATE REPOSITORIES PLEASE ASK THE DEVELOPER TO ADD YOU AS A COLLABORATOR"
echo "1. Express (PRIVATE)"
echo "2. Hapijs"
echo "3. NestJS (PRIVATE)"

read -p "Enter the number of your choice (1/2/3): " framework_choice

case "$framework_choice" in
  1)
    repo_url="https://github.com/RiyadAhsan4516/express-boilerplate.git"
    ;;
  2)
    repo_url="https://github.com/RiyadAhsan4516/hapijs-typescript-boilerplate.git"
    ;;
  3)
    repo_url="https://github.com/RiyadAhsan4516/nest-boilerplate.git"
    ;;
  *)
    echo "Invalid option. Exiting script."
    exit 1
    ;;
esac

# Clone the selected repository
git clone "$repo_url"

# Check if cloning was successful
if [ $? -eq 0 ]; then
  echo "Repository cloned successfully."

  # Prompt user for a new folder name
  echo "// ********************************************"
  echo "// *                                          *"
  echo "// *         SET PROJECT NAME                *"
  echo "// *                                          *"
  echo "// ********************************************"
  read -p "What should be the name of your project? (press Enter to keep the default): " new_folder_name

  # Extract default folder name from repo URL
  default_folder=$(basename "$repo_url" .git)

  # Set the new folder name or keep the default
  if [ -z "$new_folder_name" ]; then
    folder_name="NodeJS-Project"
  else
    folder_name="$new_folder_name"
  fi

  # Rename the cloned folder
  mv "$default_folder" "$folder_name"

  # Remove .git directory from the cloned folder
  rm -rf "$folder_name/.git"

  cd "$folder_name" || exit

  # Ask for user confirmation
  read -p "Do you want to proceed with the installation? (y/n): " proceed

  # Check user's response
  if [[ "$proceed" == "y" || "$proceed" == "Y" || "$proceed" == "" ]]; then
    # Run yarn install
    yarn install

    # Check if yarn install was successful
    if [ $? -eq 0 ]; then
      echo "Yarn install completed successfully."
      echo

      echo "// ********************************************"
      echo "// *                                          *"
      echo "// *         CREATE .env FILE                *"
      echo "// *                                          *"
      echo "// ********************************************"

      echo "Please enter the values for the fields in .env file:"
      read -p "NODE_ENV: " field1_value
      read -p "PORT: " field2_value
      read -p "LOCALHOST: " field3_value
      read -p "DB_USER: " field4_value
      read -s -p "DB_PASSWORD: " field5_value
      echo
      read -p "DB_LOCAL: " field6_value

      echo "NODE_ENV=$field1_value" > .env
      echo "PORT=$field2_value" >> .env
      echo "LOCALHOST=$field3_value" >> .env
      echo "DB_USER=$field4_value" >> .env
      echo "DB_PASSWORD=$field5_value" >> .env
      echo "DB_LOCAL=$field6_value" >> .env

      echo "// ********************************************"
      echo "// *                                          *"
      echo "// *         .env FILE CREATED               *"
      echo "// *                                          *"
      echo "// ********************************************"

      echo
      echo "Project set up complete"
    else
      echo "Failed to run yarn install."
    fi
  else
    echo "Installation canceled. Please install it manually."
  fi
else
  echo "Failed to clone the repository."
fi
