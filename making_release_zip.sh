
# The basic my own Xubuntu settings and configuration will be done by this repo, so i am thinking to make this repo's release to use this thigns easily

My_VERSION="v1.0.0"


# Get repo name from current directory
repo_name=$(basename "$(pwd)")

# Construct zip file name
zip_name="${repo_name}_${My_VERSION}.zip"

# Create the zip file, excluding .git directory and its contents
zip -r "$zip_name" . -x "*.git*" ".git/*"

# Final message

echo "Created zip: $zip_name"
