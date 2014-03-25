#/bin/sh

IMAGE_NAME=$1

if [ -z $REGISTRY_URL ]; then
  echo "Provide REGISTRY_URL to continue"
  exit 1
fi

IMAGE=$REGISTRY_URL/$IMAGE_NAME

echo "Building $IMAGE..."
docker build -t $IMAGE $IMAGE_NAME

echo "Pushing $IMAGE to registry..."
docker push $IMAGE
