#/bin/sh

dirs=()

i=1

for dir in */; do
  dirname=$(echo $dir | sed 's/\/$//')
  dirs+=($dirname)
  echo "($((i++))) $dirname"
done

echo "Which project you want to build"
echo -n "> "

read anwser

echo "dirs: $dirs"
IMAGE_NAME=$dirs($anwser)

echo $IMAGE_NAME

if [ -z $REGISTRY_URL ]; then
  echo "Provide REGISTRY_URL to continue"
  exit 1
fi

IMAGE=$REGISTRY_URL$IMAGE_NAME

echo "Building $IMAGE..."
docker build -t $IMAGE $IMAGE_NAME

echo "Pushing $IMAGE to registry..."
docker push $IMAGE
