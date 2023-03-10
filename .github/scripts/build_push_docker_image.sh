#steps
#1. create docker image (docker --build)
#2. Tag docker image (docer tag <image_name> <ghcr.io/<git user name>/<tag_name>)
#3. Autintacate gir hub package registry
#4. push tag to git hub package registry

cd Python_scripts/python_df_create_example
echo $PWD
docker build -t python_df_create_example .
docker tag python_df_create_example ghcr.io/$USER_NAME/python_df_create_example_latest
echo $GHCR_TOKEN|docker login ghcr.io -u hartat --password-stdin
docker push ghcr.io/$USER_NAME/python_df_create_example_latest