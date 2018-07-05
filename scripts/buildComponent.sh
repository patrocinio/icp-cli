COMPONENT=$1
VERSION=$2

echo Building component $COMPONENT at version $VERSION 
cd ../src

IMAGE=patrocinio/$COMPONENT:$VERSION
docker build -t $IMAGE -f $COMPONENT/Dockerfile .

