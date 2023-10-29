# For writing commands that will be executed after the container is created

# Installs `project_name` as local library without resolving dependencies (--no-deps)
# python3 -m pip install -e ./src/project_name --no-deps

# After the above command is run, the contents of the `project_name`` directory can be imported as a library
# For example, to import the `python_script.py` file in the `src/project_name` directory:
# You can simply run `import python_script` from anywhere within the workspace

# # Install datasets from S3
# # This script will download the datasets from S3 and place them in the correct directory structure
# # This script should be run from the root of the repository

# # Define the base directory path
# base_dir="${HOME}/data/ephys"

# # Create the base directory
# mkdir -p "$base_dir"

# # Define an array of dataset names
# dataset_names=("path/dataset_name_001" "path/dataset_name_002" "path/dataset_name_003")

# # Loop through the dataset names
# for sub_dir in "${dataset_names[@]}"; do
#   # Create directories
#   mkdir -p "$base_dir/$sub_dir"

#   # Download data from S3
#   aws --endpoint https://s3-west.nrp-nautilus.io s3 cp "s3://braingeneers/ephys/$sub_dir" "$base_dir/$sub_dir" --recursive --no-sign-request
# done